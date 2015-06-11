class LandingsController < ApplicationController
  def index
    session[:loggedIn] = false
    @pageContent = About.all
    @picSix = Photo.all.where.not(position: 0)
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
