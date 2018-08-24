class DosesController < ApplicationController
  before_action :find_cocktail, only: [:create, :destroy]

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to cocktail_path(@cocktail)
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:amount, :description, :cocktail_id, :ingredient_id)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
