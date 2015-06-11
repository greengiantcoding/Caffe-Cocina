class MenusController < ApplicationController
  def index
    @hotDrinks = Drink.all.where(category:'Hot').order('sub_category').order('title')
    @coldDrinks = Drink.all.where(category:'Cold').order('sub_category').order('title')
    @coldDrinkCategory = Drink.all.where(category: 'Cold').select('sub_category').group('sub_category')
    @hotDrinkCategory = Drink.all.where(category: 'Hot').select('sub_category').group('sub_category')
    @picThree = Photo.all.where.not(polaroid: 0)
    @treats = Treat.all.order('title')
    @lunchCategoryMenu = Food.all.where(category:'Lunch').group('lunch_category')
    @lunchMenu = Food.all.where(category:'Lunch').order('title')
    @breakfastMenu = Food.all.where(category: 'Breakfast').order('title')
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def delete
  end
end
