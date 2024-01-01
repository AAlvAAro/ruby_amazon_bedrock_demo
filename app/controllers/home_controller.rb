# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @model_providers = ModelProvider.all
  end
end
