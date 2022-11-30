class CategoriesController < ApplicationController
  def index
    categories = list_categories
    render json: categories
  end

  private

  def list_categories
    Category.find_each.map do |category|
      CategorySerializer.new(category)
    end
  end
end
