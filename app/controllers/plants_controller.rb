class PlantsController < ApplicationController
    def plant_params
        params.require(:plant).permit!
    end

    def index
        @plants = Plant.all
        render :index
    end

    def show
        @plant = Plant.find(params[:id])
        @ads = @plant.ads
        @reviews = @plant.reviews
        render :show
    end

    def new
        @plant = Plant.new
        render :new
    end

    def create
        @plant = Plant.new(params.require(:plant).permit(:name, :breed, :description, :price, :stock))
        if @plant.save
            flash[:success] = "New Plant added!"
            redirect_to plants_url
        else
            flash.now[:error] = "Failure to create!"
            render :new
        end
    end

    def edit
        @plant = Plant.find(params[:id])
        render :edit
    end

    def update
        @plant = Plant.find(params[:id])
        if @plant.update(params.require(:plant).permit(:name, :breed, :description, :price, :stock))
            flash[:success] = "Plant updated!"
            redirect_to plant_url(@plant)
        else
            flash.now[:error] = "Failure to create!"
            render :edit
        end
    end

    def destroy
        @plant = Plant.find(params[:id])
        @plant.destroy
        flash[:success] = "There is No Trace of that Plant Anymore!"
        redirect_to plants_url
    end
end
