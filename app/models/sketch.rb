class SketchValidator < ActiveModel::Validator
  def validate(record)
    if (record.width * record.height) != record.data.size
      record.errors[:base] << "Error: dimension mismatch in sketch"
    end

    hist = Set.new(record.data.chars)
    if( (hist-Set.new("10".chars)).size > 0)
      record.errors[:base] << "Error: sketch data must be composed of 1s and 0s only"
    end
  end
end


class Sketch < ApplicationRecord
  belongs_to :user

  validates_with SketchValidator
  validates :width, numericality: {greater_than_or_equal_to:1}
  validates :height, numericality: {greater_than_or_equal_to:1}
end
