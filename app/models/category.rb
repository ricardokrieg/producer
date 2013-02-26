class Category < ActiveRecord::Base

  attr_accessible :name, :category_id
  validates_presence_of :name
  has_and_belongs_to_many :posts

end
