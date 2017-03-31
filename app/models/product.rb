class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories

  def self.with_categories (categories_array)
    filtered_categories = Category.where(name: categories_array).pluck(:id)
    Product
      .joins(:categories)
      .where(categories: { id: filtered_categories })
      .group('products.id')
      .having("count(categories.id) >= #{filtered_categories.count}")
  end
end
