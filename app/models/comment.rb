class Comment < ActiveRecord::Base
	
EMAIL_REGEXP = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
URL_REGEXP = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix

	  belongs_to :post
	  attr_accessible :author, :body, :email, :url, :post

	  validates_presence_of :body, :post
	  validates_associated :post


	  with_options :allow_blank => :true do |c|
		  c.validates_format_of :email, :with => EMAIL_REGEXP
		  c.validates_format_of :url, :with =>  URL_REGEXP
	  end
end
