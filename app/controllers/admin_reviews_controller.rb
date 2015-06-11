class AdminReviewsController < ApplicationController
  def index
    @acceptedReviews = Review.all.where(visible: 'Yes')
    @checkReviews = Review.all.where(visible: 'No')
    @reviewCount = @checkReviews.length
    @censors = Censor.all.order('word ASC')
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
