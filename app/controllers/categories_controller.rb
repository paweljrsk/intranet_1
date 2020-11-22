class CategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.find(1)
  end

  def show
  end
end
