class PoiTimesController < ApplicationController
  before_action :set_poi_time, only: [:show, :edit, :update, :destroy]

  # GET /poi_times
  # GET /poi_times.json
  def index
    @poi_times = PoiTime.all
  end

  # GET /poi_times/1
  # GET /poi_times/1.json
  def show
  end

  # GET /poi_times/new
  def new
    @poi_time = PoiTime.new
  end

  # GET /poi_times/1/edit
  def edit
  end

  # POST /poi_times
  # POST /poi_times.json
  def create
    @poi_time = PoiTime.new(poi_time_params)

    respond_to do |format|
      if @poi_time.save
        format.html { redirect_to @poi_time, notice: 'Poi time was successfully created.' }
        format.json { render :show, status: :created, location: @poi_time }
      else
        format.html { render :new }
        format.json { render json: @poi_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poi_times/1
  # PATCH/PUT /poi_times/1.json
  def update
    respond_to do |format|
      if @poi_time.update(poi_time_params)
        format.html { redirect_to @poi_time, notice: 'Poi time was successfully updated.' }
        format.json { render :show, status: :ok, location: @poi_time }
      else
        format.html { render :edit }
        format.json { render json: @poi_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poi_times/1
  # DELETE /poi_times/1.json
  def destroy
    @poi_time.destroy
    respond_to do |format|
      format.html { redirect_to poi_times_url, notice: 'Poi time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poi_time
      @poi_time = PoiTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poi_time_params
      params.require(:poi_time).permit(:start_time, :end_time, :itinerary_id, :poi_id)
    end
end
