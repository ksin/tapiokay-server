class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :description

  belongs_to :shop
  belongs_to :user
end
