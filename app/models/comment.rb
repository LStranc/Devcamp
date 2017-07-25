class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  
  validates :content, presence: ture, length: { mimimum: 5, maximum: 1000}
end
