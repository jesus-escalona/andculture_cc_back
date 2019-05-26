module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :all_breweries, [BreweryType], null: false
    field :some_breweries, [BreweryType], null: false
    field :brewery, [BreweryType], null: false do
      argument :id, ID, required: true
    end
    field :breweries_by_city, [BreweryType], null: false do
      argument :city, String, required: true
    end

    def all_breweries
      Brewery.all
    end

    def some_breweries
      Brewery.all.limit(5)
    end

    def brewery(id:)
      Brewery.find(id)
    end

    def breweries_by_city(city:)
      Brewery.where('lower(city) LIKE ?', city.downcase)
    end
  end
end
