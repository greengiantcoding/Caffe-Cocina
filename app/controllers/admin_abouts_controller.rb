class AdminAboutsController < ApplicationController
  def index
    @checkReviews = Review.all.where(visible: 'No')
    @reviewCount = @checkReviews.length
    @pageContent = About.all
    @layoutTitles = ['Left Front', 'Middle Front', 'Right Front', 'Left Back', 'Middle Back', 'Right Back']
    @picSix = Photo.all.where.not(position: 0).order('position')
    @admin = Administration.first
    @staff = Staff.all.order('position')
  end

  def new
  end

  def create
  end

  def edit
    redirect_to '/admin_abouts'
  end

  def update
  end

  def show
    @content = About.find(params[:content_id]).update(message: params[:message])
    redirect_to '/admin_abouts'
  end

  def delete
  end



  
end
