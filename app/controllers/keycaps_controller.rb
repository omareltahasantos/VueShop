class KeycapsController < ApplicationController
  def index
    @keycaps = Product.where(category: 'keycap')
  end

  def show
    @keycap = Product.find(params[:id])
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
