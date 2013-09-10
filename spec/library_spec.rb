require_relative 'spec_helper'

describe Library do

  describe 'self#add_book' do
    it 'should be able to add books to the library collection' do
      @book = Book.new("Elixir Is The Truth", "Thomas, Dave", "Dave's at it again! Elixir resembles Ruby, and all the cool kids are doing it!")
      @book = Library.add_book(@book)

      expect(Library.books[0].keys[0].title).to eq('Elixir Is The Truth')
    end
  end

  describe 'self#overdue' do
    it 'should be able to see a list of books that are overdue' do
      @book1 = Book.new("Elixir Is The Truth", "Thomas, Dave", "Dave's at it again! Elixir resembles Ruby, and all the cool kids are doing it!")
      Library.add_book(@book1)
      Library.books.last[@book1][:due] = Time.new(2013, 7, 31)

      @book2 = Book.new("Hello Everybody", "Simmons, Richard", "Now let's STRETCH!")
      Library.add_book(@book2)   
      Library.books.last[@book2][:due] = Time.new(2013, 8, 12)
      

      expect(Library.overdue.length).to eq(2)
    end
  end

  # A user should be able to check out books from the library for one week intervals
  # A user should not be able to check out more than two books at any given time
  # Checked-out books should be associated with a user
  # Users with overdue books should not be able to request any new books until they turn all their overdue books in
  # Users should be able to check in books to the library when they're finished with them
  # Users should be able to check a book's status (e.g. available, checked out, overdue or lost)
  # Users should be able to see a list of who has checked out which book and when those books are due to be returned
  
end