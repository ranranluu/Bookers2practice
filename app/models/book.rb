class Book < ApplicationRecord
  
  belongs_to :user
  
  
  validates :title, presence: true
  validates :body, presemce: true, length: {maximum: 200}
  
  
end
