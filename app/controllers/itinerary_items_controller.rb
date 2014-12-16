class ItineraryItemsController < ApplicationController
before_action :set_itinerary_item, only: [:show, :edit, :update, :destroy]

def create
    @itinerary_item = ItineraryItem.new(itinerary_item_params)

    respond_to do |format|
      if @itinerary_item.save
        format.html { redirect_to @itinerary_item.poi, notice: 'itinerary_item was successfully created.' }
        format.json { render :show, status: :created, location: @itinerary_item }
      else
        format.html { render :new }
        format.json { render json: @itinerary_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itineraries/1
  # PATCH/PUT /itineraries/1.json
  def update
    respond_to do |format|
      if @itinerary_item.update(itinerary_item_params)
        format.html { redirect_to @itinerary_item, notice: 'itinerary_item was successfully updated.' }
        format.json { render :show, status: :ok, location: @itinerary_item }
      else
        format.html { render :edit }
        format.json { render json: @itinerary_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itineraries/1
  # DELETE /itineraries/1.json
  def destroy
    @itinerary_item.destroy
    respond_to do |format|
      format.html { redirect_to itineraries_url, notice: 'itinerary_item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
    def itinerary_item_params
      params.require(:itinerary_item).permit(:poi_id, :itinerary_id)
    end

end
