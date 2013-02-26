class Post < ActiveRecord::Base
    attr_accessible :body, :excerpt, :title, :author_id, :category_ids

    belongs_to :author, class_name: "User", :foreign_key => "author_id"
    has_many :comments
    has_and_belongs_to_many :categories

    validates_presence_of :title, :excerpt, :body, :author_id
    validates_associated :author
end
