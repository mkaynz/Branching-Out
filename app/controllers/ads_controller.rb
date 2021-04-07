class AdsController < ApplicationController
    def index
        @ads = Ad.all
        render :index
    end

    def new
        @ad = Ad.new
        render :new
    end

    def create
        @ad = Ad.new(params.require(:ad).permit(:title))
        if @ad.save
            flash[:success] = "New Ad added!"
            redirect_to ads_url
        else
            flash[:error] = "Ad failed to create!"
            render :new
        end
    end
end
