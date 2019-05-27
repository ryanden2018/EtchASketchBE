class SketchSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :width, :height, :created_at, :updated_at, :data
end
