class AdminDrinksController < ApplicationController
  def index
    # Get review count for menu
    @checkReviews = Review.all.where(visible: 'No')
    @reviewCount = @checkReviews.length

    # Get all drinks ordered by category / subcategory / order_id
    @allDrinks = Drink.all.order('category').order('sub_category').order('order_id')
    @drinkCategory = Drink.all.select('category').group('category')
    @drinkSubCategory = Drink.all.order('category').order('sub_category').group('sub_category')
    
    @hotDrinks = Drink.all.where(category:'Hot').order('sub_category').order('title')
    @coldDrinks = Drink.all.where(category:'Cold').order('sub_category').order('title')
    @coldDrinkCategory = Drink.all.where(category: 'Cold').select('sub_category').group('sub_category')
    @hotDrinkCategory = Drink.all.where(category: 'Hot').select('sub_category').group('sub_category')
  end

  def new
  end

  def create
    @position = Drink.all.where(category: params[:category]).where(sub_category: params[:sub_category]).count + 1
    @newDrink = Drink.create(category: params[:category], sub_category: params[:sub_category], title: params[:title], description: params[:description], price_8oz: params[:price_8oz], price_12oz: params[:price_12oz], price_16oz: params[:price_16oz], price_20oz: params[:price_20oz], order_id: @position, image: params[:image])
    redirect_to '/admin_drinks'
  end

  def edit
    Drink.find(params[:id]).update( drink_params )
    redirect_to '/admin_drinks'
  end

  def update

  end

  def show
    Drink.find(params[:id]).delete()
    redirect_to '/admin_drinks'
  end

  def delete
  end

  private

  def drink_params
    params.permit(:sub_category, :title, :description, :price_8oz, :price_12oz, :price_16oz, :price_20oz)
  end

end
