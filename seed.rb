require_relative './book.rb'
require_relative './library.rb'


b = Book.new("Dave Thomas Says Elixir Is The Truth", "Thomas, Dave", "Dave's at it again! Elixir resembles Ruby, and all the cool kids are doing it!")

Library.add_book(b)

