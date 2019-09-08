class Company < ApplicationRecord
  has_many :users
  belongs_to :company_category
end
