class Product < ApplicationRecord
  has_many :categories

  def categories_attributes=(categories_attributes)
    categories_attributes.each do |i, categories_attributes|
      self.categories.build(categories_attributes)
    end
  end
end
