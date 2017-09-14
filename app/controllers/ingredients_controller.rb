class IngredientsController < ApplicationController
  before_action :load_categories, only: [:new, :create, :edit, :update]
  before_action :load_ingredient, only: [:show, :update, :edit]

  def index
    @ingredients = Ingredient.order(:created_at)
  end

  def show
    @recipes = @ingredient.recipes
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      flash[:notice] = "You created a thing!"
      redirect_to ingredient_path(@ingredient)
    else
      flash[:error] = @ingredient.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
  end

  def update
    if @ingredient.update(ingredient_params)
      flash[:notice] = "You updated a thing!"
      redirect_to ingredient_path(@ingredient)
    else
      flash[:error] = @ingredient.errors.full_messages.join(', ')
      render :edit
    end
  end

  private
  def ingredient_params
    params.require(:ingredient).permit([:name, :category])
  end

  def load_categories
    @categories = Ingredient.categories.keys    
  end

  def load_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

end
