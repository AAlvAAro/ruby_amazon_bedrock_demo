class ModelsController < ApplicationController
  before_action :set_model_provider, except: :show
  before_action :set_model, only: %i[show edit update destroy]

  # GET /models or /models.json
  def index
    @models = @model_provider.models

    respond_to do |format|
      format.turbo_stream
    end
  end

  # GET /models/1 or /models/1.json
  def show
    @model = Model.find(params[:id])

    respond_to do |format|
      format.turbo_stream
    end
  end

  # GET /models/new
  def new
    @model = Model.new
  end

  # GET /models/1/edit
  def edit; end

  # POST /models or /models.json
  def create
    @model = @model_provider.models.new(model_params)

    respond_to do |format|
      if @model.save
        format.html { redirect_to [@model_provider, @model], notice: 'Model was successfully created.' }
        format.json { render :show, status: :created, location: @model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /models/1 or /models/1.json
  def update
    respond_to do |format|
      if @model.update(model_params)
        format.html { redirect_to [@model_provider, @model], notice: 'Model was successfully updated.' }
        format.json { render :show, status: :ok, location: @model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /models/1 or /models/1.json
  def destroy
    @model.destroy!

    respond_to do |format|
      format.html do
        redirect_to model_provider_models_url(@model_provider), notice: 'Model was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_model
    @model = Model.find(params[:id])
  end

  def set_model_provider
    @model_provider = ModelProvider.find(params[:model_provider_id])
  end

  # Only allow a list of trusted parameters through.
  def model_params
    params.require(:model).permit(:name, :description, :documentation_url, :model_provider_id)
  end
end
