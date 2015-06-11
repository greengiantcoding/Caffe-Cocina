class DashboardsController < ApplicationController
  def index
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

  def ourstory
    @staff = Staff.all.order('position')
  end
end
