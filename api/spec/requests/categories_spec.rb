require 'rails_helper'

RSpec.describe "Categories", type: :request do
  describe "GET /categories" do
    it 'renders a list of categories' do
      categories = create_list(:category, 2)

      get categories_url

      expect(status).to eq 200
      expect(body).to include(categories.sample.name)
      expect(JSON.parse(body).size).to eq categories.size
    end
  end
end
