class User < ApplicationRecord
  has_many :sketches, dependent: :destroy

  validates :username, presence: true
  validates :username, uniqueness: true
end
