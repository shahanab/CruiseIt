class CategoryPoisController < ApplicationController
	def create
	 @category_poi = CategoryPoi.new(category_poi_params)

    	respond_to do |format|
		      if @category_poi.save
		        format.html { redirect_to :back, notice: 'Category was successfully created.' }
		        format.json { render :show, status: :created, location: @category_poi }
		      else
		        format.html { render :new }
		        format.json { render json: @category_poi.errors, status: :unprocessable_entity }
		      end
	    	end
	end
	def destroy
		@categories_pois = CategoryPoi.find(params[:id])
	@categories_pois.destroy
	 respond_to do |format|
	      format.html { redirect_to :back, notice: 'Category was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

	private
    def category_poi_params
        params.require(:category_poi).permit(:category_id, :poi_id)
    end
end