class ModelProvidersController < ApplicationController
  before_action :set_model_provider, only: %i[ show edit update destroy ]

  # GET /model_providers or /model_providers.json
  def index
    @model_providers = ModelProvider.all
  end

  # GET /model_providers/1 or /model_providers/1.json
  def show
  end

  # GET /model_providers/new
  def new
    @model_provider = ModelProvider.new
  end

  # GET /model_providers/1/edit
  def edit
  end

  # POST /model_providers or /model_providers.json
  def create
    @model_provider = ModelProvider.new(model_provider_params)

    respond_to do |format|
      if @model_provider.save
        format.html { redirect_to model_provider_url(@model_provider), notice: "Model provider was successfully created." }
        format.json { render :show, status: :created, location: @model_provider }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @model_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /model_providers/1 or /model_providers/1.json
  def update
    respond_to do |format|
      if @model_provider.update(model_provider_params)
        format.html { redirect_to model_provider_url(@model_provider), notice: "Model provider was successfully updated." }
        format.json { render :show, status: :ok, location: @model_provider }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @model_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_providers/1 or /model_providers/1.json
  def destroy
    @model_provider.destroy!

    respond_to do |format|
      format.html { redirect_to model_providers_url, notice: "Model provider was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_provider
      @model_provider = ModelProvider.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def model_provider_params
      params.require(:model_provider).permit(:name, :description, :documentation_url)
    end
end
