class BlogPost < ActiveRecord::Base
	has_many :comments

	validates :title, :author, :blog_entry, presence: true ##Attriutes ...presence :true ...if you pass a 0 zero trough program it will give error
	validates :title, uniqueness: true, length: { maximum: 140 }
end
