class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.order(:created_at)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @recipes = @ingredient.recipes
  end

  def new
    @ingredient = Ingredient.new
    @categories = Ingredient.categories.keys
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    redirect_to ingredient_path(@ingredient)
  end

  private
  def ingredient_params
    params.require(:ingredient).permit([:name, :category])
  end

end
