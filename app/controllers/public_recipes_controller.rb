class PublicRecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @public_recipes = Recipe.includes(:recipe_foods, :user).where(public: true).order(created_at: :desc)
    @total_price = calculate_total_price(@public_recipes)
  end

  private

  def calculate_total_price(recipes)
    total_price = 0
    recipes.each do |recipe|
      recipe.recipe_foods.each do |recipe_food|
        total_price += recipe_food.price
      end
    end
    total_price
  end
end
