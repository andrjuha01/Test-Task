require 'rails_helper'
# rake db:seed RAILS_ENV=test
RSpec.describe Product, type: :model do
  it 'has valid output with one argument' do
    expect(Product.with_categories('Fiction').pluck(:id).sort)
      .to match_array([1, 3, 4, 5, 6])
  end

  it 'has zero output with missing element' do
    expect(Product.with_categories('Science').pluck(:id).count).to eq(0)
  end

  it 'has valid output for array of categories' do
    expect(Product.with_categories(['Fiction', 'Science Fiction'])
      .pluck(:id).count).to eq(2)
  end

  it 'has zero output for duplicated elements' do
    expect(Product.with_categories(['Science', 'Science']).pluck(:id).count)
      .to eq(0)
  end

end
