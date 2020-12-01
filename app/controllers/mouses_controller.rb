class MousesController < ApplicationController
  def index
    @mices = Product.where(category: 'mouse')
  end

  def show
    @mice = Product.find(params[:id])
  end

  def create
  end

  def new
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
