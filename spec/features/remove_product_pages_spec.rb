require 'rails_helper'

describe "REMOVE PRODUCT" do
  it "removes product" do
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
    click_on 'Remove Product'
    expect(page).to_not have_content 'Backpack'
  end
end
