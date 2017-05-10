class Book < ApplicationRecord
  validates :title,presence: true
  
  
=begin
  def display_name
    "#{title}(#{author})"
  end
=end
end
