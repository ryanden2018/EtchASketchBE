class UserSerializer < ActiveModel::Serializer
  class SketchSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :width, :height, :created_at, :updated_at
  end
  has_many :sketches
  attributes :id, :username, :created_at, :updated_at
end
