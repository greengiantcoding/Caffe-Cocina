class PhotoAlbumsController < ApplicationController
  def index
    @allPhotos = Photo.all
  end

  def new
    @allPhotos = Photo.all
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
