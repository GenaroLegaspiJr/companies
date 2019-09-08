class AddCompanyCategoryIdToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :company_category_id, :integer
  end
end
