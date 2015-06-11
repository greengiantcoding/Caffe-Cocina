class AdminPhotosController < ApplicationController
  def index
    @checkReviews = Review.all.where(visible: 'No')
    @reviewCount = @checkReviews.length
    @allPhotos = Photo.all
    @polaroidTitles = ['Food Polaroid', 'Drink Polaroid', 'Treats Polaroid']
    @picThree = Photo.all.where.not(polaroid: 0)
    @layoutTitles = ['Left Front', 'Middle Front', 'Right Front', 'Left Back', 'Middle Back', 'Right Back']
    @picSix = Photo.all.where.not(position: 0).order('position')
  end

  def new
    redirect_to '/admin_photos'
  end

  def create
    @photo = Photo.create(image_params)
    redirect_to '/admin_photos'
  end

  def edit
    # @positionholder = Photo.find(params[:id]).update(position: '0')
    # @positionTaker = Photo.find(params[:newPhotoID]).update(position: params[:position])

    @positionHolder = Photo.all.where(position: params[:id])
    if @positionHolder.count > 0 then
      position = @positionHolder[0].id
      @updateHolder = Photo.find(position).update(position: '0')
    end
   
    if Photo.where(:id => params[:newPhotoID]).blank?
      redirect_to '/admin_photos'
    else
      @positionTaker = Photo.find(params[:newPhotoID]).update(position: params[:id])
      redirect_to '/admin_photos'
    end

  end

  def update
  end

  def show
    @photo = Photo.find(params[:photo_id]).delete
    redirect_to '/admin_photos'
  end

  def delete
  end

  def polaroid
    @positionHolder = Photo.all.where(polaroid: params[:polaroidID])
    if @positionHolder.count > 0 then 
      position = @positionHolder[0].id
      @updateHolder = Photo.find(position).update(polaroid: '0')
    end

    if Photo.where(:id => params[:newPhotoID]).blank?
      redirect_to '/admin_photos'
    else
      @positionTaker = Photo.find(params[:newPhotoID]).update(polaroid: params[:polaroidID])
      redirect_to '/admin_photos'
    end

  end


  private

  def image_params
    params.require(:picture).permit(:avatar, :caption, :position)
  end


end
