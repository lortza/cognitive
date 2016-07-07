class HealthyThoughtTypesController < ApplicationController
  before_action :set_healthy_thought_type, only: [:show, :edit, :update, :destroy]

  # GET /healthy_thought_types
  # GET /healthy_thought_types.json
  def index
    @healthy_thought_types = HealthyThoughtType.all
  end

  # GET /healthy_thought_types/1
  # GET /healthy_thought_types/1.json
  def show
  end

  # GET /healthy_thought_types/new
  def new
    @healthy_thought_type = HealthyThoughtType.new
  end

  # GET /healthy_thought_types/1/edit
  def edit
  end

  # POST /healthy_thought_types
  # POST /healthy_thought_types.json
  def create
    @healthy_thought_type = HealthyThoughtType.new(healthy_thought_type_params)

    respond_to do |format|
      if @healthy_thought_type.save
        format.html { redirect_to @healthy_thought_type, notice: 'Healthy thought type was successfully created.' }
        format.json { render :show, status: :created, location: @healthy_thought_type }
      else
        format.html { render :new }
        format.json { render json: @healthy_thought_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /healthy_thought_types/1
  # PATCH/PUT /healthy_thought_types/1.json
  def update
    respond_to do |format|
      if @healthy_thought_type.update(healthy_thought_type_params)
        format.html { redirect_to @healthy_thought_type, notice: 'Healthy thought type was successfully updated.' }
        format.json { render :show, status: :ok, location: @healthy_thought_type }
      else
        format.html { render :edit }
        format.json { render json: @healthy_thought_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /healthy_thought_types/1
  # DELETE /healthy_thought_types/1.json
  def destroy
    @healthy_thought_type.destroy
    respond_to do |format|
      format.html { redirect_to healthy_thought_types_url, notice: 'Healthy thought type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_healthy_thought_type
      @healthy_thought_type = HealthyThoughtType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def healthy_thought_type_params
      params.require(:healthy_thought_type).permit(:name, :explanation, :example)
    end
end
