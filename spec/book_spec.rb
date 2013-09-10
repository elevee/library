require_relative 'spec_helper'

describe 'Book' do
  describe '#initialize' do
    it 'should be able to save information about books (author, title, description)' do
      book = Book.new("Ayyo This Is A Book", "Timberlake, Justin", "I write now, ya dig?")

      expect(book.title).to eq('Ayyo This Is A Book')
      expect(book.author).to eq('Timberlake, Justin')
      expect(book.description).to eq('I write now, ya dig?')
    end
  end 
end