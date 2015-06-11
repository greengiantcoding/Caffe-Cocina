class StaffsController < ApplicationController
  def index
  end

  def new

  end

  def create
    Staff.create( new_staff_params )
    redirect_to '/admin_abouts'
  end

  def edit
  end

  def update
  end

  def show
  end

  def delete
  end

  private

  def new_staff_params
    params.require(:staff).permit(:name, :position, :bio, :avatar)
  end

end
