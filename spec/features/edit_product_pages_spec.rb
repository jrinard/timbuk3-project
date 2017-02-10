require 'rails_helper'

describe "EDIT PRODUCT" do
  it "edit product" do
    visit products_path
    click_link 'Add Product'
    fill_in 'name', :with => 'Backpack'
    fill_in 'description', :with => 'Backpack'
    fill_in 'origin', :with => 'Backpack'
    fill_in 'cost', :with => 'Backpack'
    fill_in 'style', :with => 'Backpack'
    fill_in 'image', :with => 'url'
    click_on 'Create Product'
    click_on 'Backpack'
    click_on 'Edit Product'
    fill_in 'name', :with => 'Backpack2'
    fill_in 'description', :with => 'Backpack2'
    fill_in 'origin', :with => 'Backpack2'
    fill_in 'cost', :with => 'Backpack2'
    fill_in 'style', :with => 'Backpack2'
    fill_in 'image', :with => 'url'
    click_on 'Update Product'
    expect(page).to have_content 'Backpack2'
  end
end
