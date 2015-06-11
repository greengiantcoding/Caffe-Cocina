class ReviewsController < ApplicationController
  def index
    @allReviews = Review.all.where(visible: 'Yes').order('id DESC')
  end

  def new
  end

  def create

    @censors = Censor.all
    @contentCheck = params[:content]
    @contentCheck.downcase
    @censors.each do |censor| 
      if @contentCheck.include? censor.word then params[:visible] = 'No' end 
    end 

    @review = Review.create(author: params[:author], content: params[:content], rating: params[:rating], visible: params[:visible])
    redirect_to '/reviews'
  end

  def edit
    @review = Review.find(params[:id]).update(visible: 'Yes')
    redirect_to '/admin_reviews'
  end

  def update
  end

  def show
    @review = Review.find(params[:id]).delete
    redirect_to '/admin_reviews'
  end

  def delete
  end

  def censor
    @newWords = params[:newWords].split('/')
    @newWords.each do |word|
      Censor.create(word:word)
    end
    redirect_to '/admin_reviews'
  end


  private 

  def review_params
    params.require(:review).permit(:author, :content, :rating, :visible)

    @censors = Censor.all
    @contentCheck = params[:content]
    @contentCheck.downcase
    @censors.each do |censor| 
      if @contentCheck.inlude? censor.word then params[:visible] = 'No' end 
    end 
    
  end


end
