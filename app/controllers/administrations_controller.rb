class AdministrationsController < ApplicationController
  def index
    @acceptedReviews = Review.all.where(visible: 'Yes')
    @checkReviews = Review.all.where(visible: 'No')
    @reviewCount = @checkReviews.length
  end

  def new
  end

  def create
    admin = Administration.where(username: params[:username]).first

    if admin && admin.authenticate(params[:password])
      session[:loggedIn] = true 
      redirect_to '/administrations'
    else
      flash.now.alert = 'Invalid credentials for administration entry.'
      redirect_to '/landings'
    end

  end

  def edit
    admin = Administration.first

    if admin.authenticate(params[:old_password]) then
      Administration.first.update(username: params[:username])

      if params[:new_password] != nil and params[:new_password] == params[:new_password_confirmation] then 
        Administration.first.update(password: params[:new_password])
      end
      redirect_to '/admin_abouts'
    else
      redirect_to '/admin_photos'
    end  

  end

  def update
    
  end

  def show
  end

  def delete
  end
end
