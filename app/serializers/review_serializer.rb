class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :description

  has_one :user, serializer: UserForReviewSerializer
end