class Article < ApplicationRecord
  validates_presence_of :title, :description
  validates_length_of :title, minimum: 5 , maximum: 100
  validates_length_of :description, maximum: 255
  validates :text, length: {minimum: 20}
end
