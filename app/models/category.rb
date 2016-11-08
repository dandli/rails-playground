class Category < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :products

  def self.to_array_for_select_field
    Category.all.map{ |category| [category.name, category.id] }
  end
end
