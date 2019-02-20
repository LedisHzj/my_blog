class Article < ApplicationRecord
  validates_presence_of :title, :description, length:{minimum: 5, maximum: 15}
  validates :text, length: {minimum: 10, maximum: 200}
end
