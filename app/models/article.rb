class Article < ActiveRecord::Base
  belongs_to :Employee

	#default_scope lambda { order('articles.title') }
	scope :noemp, lambda {where("articles.Employee_id != 2")}
	scope :emp, lambda {where("articles.Employee_id = 1")}
	scope :fnd,->(title){where(:title=>title.chomp)}
	
	def long_title
	puts"Please Enter Title Name you want to search"
	title=gets()
	Article.fnd(title)
	end
	
end
