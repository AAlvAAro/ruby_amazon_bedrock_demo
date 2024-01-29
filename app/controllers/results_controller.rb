class ResultsController < ApplicationController
  def index
    model = Model.find(params.dig(:model, :model_id))

    options = {
      temperature: 0.9,
      max_tokens: 1256
    }
    options.merge!(upload: true) if model.kind == 'image'

    response = $amazon_bedrock_client.invoke_model(
      id: model.bedrock_model_id,
      prompt: params.dig(:results, :prompt),
      options:
    )

    render turbo_stream: [
      turbo_stream.update('result', partial: 'results/index',
                                    locals: { text: response[:text], s3_url: response[:s3_url], prompt: params[:results][:prompt] }),
      turbo_stream.update('prompt', partial: 'results/prompt')
    ]
  end
end
