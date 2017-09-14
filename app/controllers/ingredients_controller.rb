class IngredientsController < ApplicationController
  before_action :load_categories, only: [:new, :create]
  
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
    if @ingredient.save
      flash[:notice] = "You created a thing!"
      redirect_to ingredient_path(@ingredient)
    else
      @categories = Ingredient.categories.keys      
      flash[:error] = @ingredient.errors.full_messages.join(', ')
      render :new
    end
  end

  private
  def ingredient_params
    params.require(:ingredient).permit([:name, :category])
  end

  def load_categories
    @categories = Ingredient.categories.keys    
  end

end
