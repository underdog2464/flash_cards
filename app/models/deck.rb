class Deck < ActiveRecord::Base
  has_many :cards, dependent: :destroy
  validates :name, presence: true,
                   length: { minimum: 3 }
  validates :desc, length: { maximum: 200 }
end
