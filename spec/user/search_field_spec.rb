require 'rails_helper'

feature 'USER can search for types of food' do
  scenario 'user submits a valid food type' do
    visit '/'

    fill_in "search_field",	with: "sweet potatoes"

    click_on 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Items Returned: 50')

    
  end
end

