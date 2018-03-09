class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredients = Ingredient.new
  end

  def create
    @ingredients = Ingredient.create(ingredient_params)
    redirect_to ingredients_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
