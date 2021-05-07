class AdsController < ApplicationController
    def index
        @ads = Ad.all
        @plant = Plant.all
        render :index
    end

    def show
        @plants = Plant.all
        render :choose
    end

    def new
        @plant = Plant.find(params[:plant_id])
        @ad = @plant.ads.new
        render :new
    end

    def create
        @plant = Plant.find(params[:plant_id])
        @ad = @plant.ads.new(params.require(:ad).permit(:title))
        if @ad.save!
            flash[:success] = "New Ad added!"
            redirect_to ads_url
        else
            flash.now[:error] = "Failure to create!"
            render :new
        end
    end
end
