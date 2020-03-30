require 'rails_helper'

feature 'USER can search for types of food' do
  scenario 'user submits a valid food type' do
    visit '/'

    fill_in "search_field",	with: "sweet potatoes"

    click_on 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Items Returned: 50')

    expect(page).to have_css('.food', count: 10)
    
    within(first('.food')) do
      expect(page).to have_css('.upc')
      expect(page).to have_css('.description')
      expect(page).to have_css('.brand')
      expect(page).to have_css('.ingredients')
    end
  end
end

