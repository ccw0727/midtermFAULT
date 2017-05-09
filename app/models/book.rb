class Book < ApplicationRecord
  validates :title,presence: true
  has_many :logs
  
=begin
  def display_name
    "#{title}(#{author})"
  end
=end
end
