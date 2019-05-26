module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :all_breweries, [BreweryType], null: false
    field :some_breweries, [BreweryType], null: false
    def all_breweries
      Brewery.all
    end

    def some_breweries
      Brewery.all.limit(5)
    end
  end
end
