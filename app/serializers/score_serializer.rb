class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :game, :user, :score, :created_at
end
