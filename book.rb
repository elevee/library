require 'spec_helper'

class Book

# Books should be able to have information saved about them (author, title, description)
  attr_accessor :title, :author, :description

  def initialize(title, author, description)
    @title = title
    @author = author
    @description = description
  end

end