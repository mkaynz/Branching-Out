class AdsController < ApplicationController
    def index
        @ads = Ad.all
        render :index
    end

    def new
        @ad = Ad.new
        render :new
    end
end
