class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attr_accessor :company_name, :phone_number, :website, :description, :company_category

  belongs_to :company, optional: true

  before_create :create_company

  def create_company
    puts "4567"
    category = User.get_company_category company_category
    company = Company.new name: company_name, phone_number: phone_number, website: website, description: description, company_category: category
  
    if company.save
      self.company = company
    else
      errors.add(:base, company.errors.full_messages.to_sentence)
      throw(:abort)
    end
  end

  def self.get_company_category company_category
    CompanyCategory.find_by_name company_category
  end
end
