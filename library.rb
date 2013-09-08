# require_relative 'book.rb'
# load 'book.rb'

class Library

  @@book_collection = []

    # book_collection is an array of hashes
      # Keys = Book object
      # Values = Nested Hash 
        # :in_stock => boolean
        # :due => Time object
        # :borrowed_by => User object
        # :lost => boolean

  def self.books
    @@book_collection
  end

  def add_book(book_object)  # Users should be able to add books to a library
    new_book = {}
    book_details = {}
      book_details[:in_stock]    = true
      book_details[:due]         = nil
      book_details[:borrowed_by] = nil
      book_details[:lost]        = false

    new_book[book_object] = book_details
    @@book_collection << new_book
  end

  def self.book_status(book_object)
    #Finds a book in the Collection. Returns the book object.

    # Find the book by getting each book out of the collection array
    matched_book = Library.books.select do |book|
      book.keys[0].title == book_object.title
    end
    # Take book object out of array. Returns a hash of the status attributes.
    book_status = matched_book[0].values[0]
  end

  def self.in_stock?(book_object) #argument is a book object
    # Users should be able to check a book's status (e.g. available, checked out)
    # find it
    book = Library.book_status(book_object)
    # Look up value at specified key
    book[:in_stock]
        
  end

  def self.lost?(book_object) #argument is a book object
    # Users should be able to check if a book is lost

    # find it
    book = Library.book_status(book_object)
    # Look up value at specified key
    book[:lost]
        
  end

  def self.overdue?(book_object)
    # Users should be able to check if a book is overdue

    # find it
    book = Library.book_status(book_object)
    # Figure out if book is overdue
    due_date = book[:due]
  end

  def something
    # Users should be able to see a list of who has checked out which book and when those books are due to be returned
    # Users should be able to see a list of books that are overdue
  end

  def check_out(book_object) 
    # Checked-out books should be associated with a user
    # A user should be able to check out books from the library for one week intervals
    # A user should not be able to check out more than two books at any given time
    # Users with overdue books should not be able to request any new books until they turn all their overdue books in
  end

  def check_in(book_object)
    # Users should be able to check in books to the library when they're finished with them

  end
  

end



# Extra Credit
# Books should have optional attributes for year-published and edition
# Users should be able to import a .csv file with a list of books to add to the library
# Users should be able to leave reviews on books with both a rating and an optional written review
# Users should be able to schedule a future check-out for a book that is currently checked-out
# Users should be able to do a one-time extension for a week if no one has scheduled a future check-out for that book