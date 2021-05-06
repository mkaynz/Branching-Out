class AdsController < ApplicationController
    before_action :initialize_session
    before_action :increment_visit_count
    before_action :load_cart
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
            flash.now[:error] = "Failure to create!"
            render :new
        end
    end
    def add_to_cart
        id = params[:id].to_i
        session[:cart] << id unless session[:cart].include?(id)
        flash[:success] = 'The Item was successfully added.'
        redirect_to ads_path
    end

    def remove_from_cart
        id = params[:id].to_i
        session[:cart].delete(id)
        redirect_to ads_path
    end

    private 

    def initialize_session
        session[:visit_count] ||= 0 #initialize the visit count on first visit
        session[:cart] ||= []
    end

    def load_cart
        @cart = Ad.find(session[:cart])  #Load up all products in the cart
    end
    
    def increment_visit_count
        session[:visit_count] +=1 #increment each visit 
        @visit_count = session[:visit_count]  
    end

   
end
