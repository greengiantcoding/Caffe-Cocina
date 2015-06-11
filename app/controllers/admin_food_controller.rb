class AdminFoodController < ApplicationController
    def index
      @checkReviews = Review.all.where(visible: 'No')
      @reviewCount = @checkReviews.length
      @foodItems = Food.all.order('lunch_category').order('title')
      @treatItems = Treat.all.order('title')
    end

    def new
    end

    def create
      @food = Food.create(food_params)
      redirect_to '/admin_food'
    end

    def edit
      @updated = Food.find(params[:id]).update(update_food_params)
      redirect_to '/admin_food'
    end

    def edit_breakfast_image
      # @oldItem = Food.find(params[:item_id]).delete
      @newItem = Food.create(update_food_image_params)
      redirect_to '/admin_food'
    end

    def update
    end

    def show
      @deleted = Food.find(params[:id]).delete
      redirect_to '/admin_food'
    end

    def delete
    end

    def addTreat
      @treat = Treat.create(treat_params)
      redirect_to '/admin_food'
    end

    def delete_treat
      @destroy = Treat.find(delete_treat_params[:id]).delete
      redirect_to '/admin_food'
    end

    def edit_treat
      @update = Treat.find(params[:treat_id]).update(update_treat_params)
      redirect_to '/admin_food'
    end

    def edit_lunch
      @update = Food.find(params[:lunch_id]).update(update_lunch_params)
      redirect_to '/admin_food'
    end

    def delete_lunch
      @destroy = Food.find(params[:lunch_id]).delete
      redirect_to '/admin_food'
    end

  private 

    def food_params
      params.require(:food).permit(:title, :description, :category, :price_label, :price, :alt_price_label, :alt_price, :image, :lunch_category)
    end

    def update_food_params
      params.require(:food).permit(:title, :description, :category, :price_label, :price, :alt_price_label, :alt_price, :image, :lunch_category)
    end

    def update_food_image_params
      params.require(:food).permit(:title, :description, :category, :price_label, :price, :alt_price_label, :alt_price, :image, :lunch_category)
    end

    def update_lunch_params
      params.require(:lunch).permit(:lunch_category, :title, :description, :price_label, :price, :alt_price_label, :alt_price)
    end

    def treat_params
      params.require(:treat).permit(:title, :description, :price, :image)
    end

    def update_treat_params
      params.require(:treat).permit(:title, :description, :price)
    end

    def delete_treat_params
      params.require(:treat).permit(:id)
    end

end
