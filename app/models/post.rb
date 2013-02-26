class Post < ActiveRecord::Base

  attr_accessible :body, :excerpt, :title, :author_id, :category
  validates_presence_of :title, :excerpt, :body, :author
  validates_associated :author
  has_many :comments
  has_and_belongs_to_many :categories

  belongs_to :author, class_name: "User", :foreign_key => "author_id"


end
