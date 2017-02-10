require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in 'name', :with => 'Backpack'
    fill_in 'description', :with => 'Backpack'
    fill_in 'origin', :with => 'Backpack'
    fill_in 'cost', :with => 'Backpack'
    fill_in 'style', :with => 'Backpack'
    fill_in 'image', :with => 'url'
    click_on 'Create Product'
    expect(page).to have_content 'Backpack'
  end
  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
