class RecipesController < ApplicationController
  before_action :load_ingredients, only: [:new]

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_ingredients = @recipe.recipe_ingredients.includes(:ingredient)
  end

  def new
    @recipe = Recipe.new
    
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.valid?
      flash[:notice] = "YAY"
      redirect_to recipe_path(@recipe.id)
    else
      flash[:error] = @ingredient.errors.full_messages.join(', ')
      render :new
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, ingredient_ids: [])
  end

  def load_ingredients
    @ingredients = Ingredient.all
  end

end
