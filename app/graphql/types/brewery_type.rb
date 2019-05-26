module Types
  class BreweryType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :brewery_type, String, null: false
  end
end
