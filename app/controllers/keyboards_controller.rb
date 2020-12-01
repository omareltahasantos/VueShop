class KeyboardsController < ApplicationController
  def index
    @keyboards = Product.where(category: 'keyboard')
  end

  def show
    #@keyboard = Product.find(params[:id])
    render json: Cat.find(params[:id]), serializer: CatSerializer
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
