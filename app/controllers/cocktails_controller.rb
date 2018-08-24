class CocktailsController < ApplicationController
  before_action :select_cocktail, only: [:show, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :show
    end
  end

  def update
    @cocktail.update(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :show
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to coctails_path
  end
  
  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image)
  end

  def select_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
