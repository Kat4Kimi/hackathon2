# class ApiConnector
# 	attr_accessor :title, :description, :url

# 	def initialize(title, description, url = "google.com")
# 	@title = title
# 	@description = description
# 	@url = url
# 	end

# 	def testing_initializers
# 	puts @title
# 	puts @description
# 	puts @url
# 	end
# end

# api = ApiConnector.new("My Title", "Story of My Life", "Kat.com")

# api.testing_initializers

class Book 
	attr_accessor :title, :author, :pages
	def initialize(title, author, pages)
		@title = title
		@author = author
		@pages = pages
	end
end

book1 = Book.new("Harry Potter", "JK Rowling", 400)
book2 = Book.new("Lord of the Rings", "Tolkien", 1000)

puts book1.pages
puts book2.title