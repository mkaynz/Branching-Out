class ReviewsController < ApplicationController
    def index
        @plant = Plant.find(params[:plant_id])
        @reviews = @plant.reviews
        render :index 
    end
    
    def new
        @plant = Plant.find(params[:plant_id])
        @review = @plant.reviews.new
        render :new
    end

    def create
        @plant = Plant.find(params[:plant_id])
        @review = @plant.reviews.build(params.require(:review).permit(:body, :rating))
        @review.creator = current_user
        if @review.save!
            flash[:success] = "New Review added!"
            redirect_to plant_reviews_url(@plant)
        else
            flash.now[:error] = "Failure to create!"
            render :new
        end
    end

    def edit
        @plant = Plant.find(params[:plant_id])
        @review = @plant.reviews.find(params[:id])
        render :edit
    end

    def update
        @user = current_user
        @plant = Plant.find(params[:plant_id])
        @review = @plant.reviews.find(params[:id])
        if @review.update(params.require(:review).permit(:body, :rating))
            flash[:success] = 'Review Updated!'
            redirect_to plant_reviews_url(@plant, @review)
        else
            flash.now[:error] = 'Failure to Create!'
            render :edit
        end
    end


end
