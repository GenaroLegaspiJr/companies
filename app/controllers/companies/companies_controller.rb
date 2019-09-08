class Companies::CompaniesController < ApplicationController
  before_action :get_category
  
  def index
    @companies = @category.companies
  end

  private

  def get_category
    @category = CompanyCategory.find params[:category_id]
  end
end
