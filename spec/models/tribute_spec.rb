require 'rails_helper'

RSpec.describe Tribute, type: :model do
  it 'should validate name' do
    tribute = Tribute.create(
      age: 16, 
      hobby: 'shooting up birds and squirrels', 
      image: 'https://live.staticflickr.com/606/21731063948_c2bdd0aef6_b.jpg', 
      district: 'District 12'
    )
    expect(tribute.errors[:name]).to_not be_empty
  end
  it 'should validate age' do
    tribute = Tribute.create(
      name: 'Katniss Everdeen',
      age: nil, 
      hobby: 'shooting up birds and squirrels', 
      image: 'https://live.staticflickr.com/606/21731063948_c2bdd0aef6_b.jpg', 
      district: 'District 12'
    )
    expect(tribute.errors[:age]).to_not be_empty
  end
  it 'should validate length of hobby' do
    tribute = Tribute.create(
      name: 'Katniss Everdeen',
      age: 16, 
      hobby: 'shooting', 
      image: 'https://live.staticflickr.com/606/21731063948_c2bdd0aef6_b.jpg', 
      district: 'District 12'
    )
    expect(tribute.errors[:hobby]).to_not be_empty
  end
  it 'should validate image' do
    tribute = Tribute.create(
      name: 'Katniss Everdeen',
      age: 16, 
      hobby: 'shooting', 
      image: nil, 
      district: 'District 12'
    )
    expect(tribute.errors[:image]).to_not be_empty
  end
  it 'should validate district' do
    tribute = Tribute.create(
      name: 'Katniss Everdeen',
      age: 16, 
      hobby: 'shooting', 
      image: 'https://live.staticflickr.com/606/21731063948_c2bdd0aef6_b.jpg', 
      district: nil
    )
    expect(tribute.errors[:district]).to_not be_empty
  end
end
