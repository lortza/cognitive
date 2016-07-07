class UnhealthyThoughtTypesController < ApplicationController
  before_action :set_unhealthy_thought_type, only: [:show, :edit, :update, :destroy]

  # GET /unhealthy_thought_types
  # GET /unhealthy_thought_types.json
  def index
    @unhealthy_thought_types = UnhealthyThoughtType.all
  end

  # GET /unhealthy_thought_types/1
  # GET /unhealthy_thought_types/1.json
  def show
  end

  # GET /unhealthy_thought_types/new
  def new
    @unhealthy_thought_type = UnhealthyThoughtType.new
  end

  # GET /unhealthy_thought_types/1/edit
  def edit
  end

  # POST /unhealthy_thought_types
  # POST /unhealthy_thought_types.json
  def create
    @unhealthy_thought_type = UnhealthyThoughtType.new(unhealthy_thought_type_params)

    respond_to do |format|
      if @unhealthy_thought_type.save
        format.html { redirect_to @unhealthy_thought_type, notice: 'Unhealthy thought type was successfully created.' }
        format.json { render :show, status: :created, location: @unhealthy_thought_type }
      else
        format.html { render :new }
        format.json { render json: @unhealthy_thought_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unhealthy_thought_types/1
  # PATCH/PUT /unhealthy_thought_types/1.json
  def update
    respond_to do |format|
      if @unhealthy_thought_type.update(unhealthy_thought_type_params)
        format.html { redirect_to @unhealthy_thought_type, notice: 'Unhealthy thought type was successfully updated.' }
        format.json { render :show, status: :ok, location: @unhealthy_thought_type }
      else
        format.html { render :edit }
        format.json { render json: @unhealthy_thought_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unhealthy_thought_types/1
  # DELETE /unhealthy_thought_types/1.json
  def destroy
    @unhealthy_thought_type.destroy
    respond_to do |format|
      format.html { redirect_to unhealthy_thought_types_url, notice: 'Unhealthy thought type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unhealthy_thought_type
      @unhealthy_thought_type = UnhealthyThoughtType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unhealthy_thought_type_params
      params.require(:unhealthy_thought_type).permit(:name, :explanation, :example)
    end
end
