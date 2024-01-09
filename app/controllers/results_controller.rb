# require 'amazon_bedrock'

class ResultsController < ApplicationController
  def index
    # TODO: get model if from params
    # model = Model.find(params[:model][:model_id])
    response = $amazon_bedrock_client.invoke_model(id: 'ai21.j2-mid-v1', input: params[:results][:prompt])
    text = response[:completions].first[:data][:text]

    render turbo_stream: [
      turbo_stream.update('result', partial: 'results/index', locals: { text:, prompt: params[:results][:prompt] }),
      turbo_stream.update('prompt', partial: 'results/prompt')
    ]
  end
end
