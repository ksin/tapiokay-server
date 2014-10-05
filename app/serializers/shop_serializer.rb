class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :location

  has_many :reviews
end
