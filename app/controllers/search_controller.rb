class SearchController < ApplicationController
  def index
    api_key = ENV['FOOD_API_KEY']
    response = Faraday.get(
      "https://api.nal.usda.gov/fdc/v1/search?api_key=#{ENV['FOOD_API_KEY']}&ingredients=#{params[:search_field]}"
    )

    food_json = JSON.parse(response.body, symbolize_names: true)

    @foods = food_json[:foods]
  end
end
