class CocktailsController < ApplicationController
  before_action :select_cocktail, only: [:show, :update, :edit, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def select_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
