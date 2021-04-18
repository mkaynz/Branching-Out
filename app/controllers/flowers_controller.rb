class FlowersController < ApplicationController
    def index
        @plants = Plant.all
        render :index
    end

    def show
        @plant = Plant.find(params[:id])
        @ads = Ad.all
        render :show
    end


end
