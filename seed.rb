require_relative 'book.rb'
require_relative 'library'
require_relative 'user'

l = Library.new
b = Book.new("Dave Thomas Says Elixir Is The Truth", "Thomas, Dave", "Dave's at it again! Elixir resembles Ruby, and all the cool kids are doing it!")
l.add_book(b)

