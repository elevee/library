require_relative 'spec_helper'

describe Library do
#   let(:library) { Library.new }
#   context ''
  describe '#add_book' do
    it 'should be able to add books to the library collection' do
      @book = Book.new("Elixir Is The Truth", "Thomas, Dave", "Dave's at it again! Elixir resembles Ruby, and all the cool kids are doing it!")
      @book = Library.add_book(@book)

      expect(Library.books[0].keys[0].title).to eq('Elixir Is The Truth')
      
    end
  end
end