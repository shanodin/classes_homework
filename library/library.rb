class Library

attr_reader :books
attr_writer :books

def initialize( books )
  @books = books
end


def list
  return books
end

def info_from_title( title )
  match = nil
  for book in books
    match = book if book[:title] == title
  end
  return match
end

end
