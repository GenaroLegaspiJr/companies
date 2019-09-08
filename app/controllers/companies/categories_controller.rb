class Companies::CategoriesController < ApplicationController
  def index
    @categories = CompanyCategory.all
  end
end
