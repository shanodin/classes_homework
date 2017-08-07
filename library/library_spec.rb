require("Minitest/autorun")
require_relative("./library.rb")

class TestLibrary <MiniTest::Test


def test_add_new_book
  library = Library.new([])
  library.books.push({title: "Harry Potter", rental_details: {student_name: "Alice", date: "01/01/2000"}})
  assert_equal({title: "Harry Potter", rental_details: {student_name: "Alice", date: "01/01/2000"}}, library.books.last)
end

def test_return_list
  library = Library.new([{title: "Harry Potter", rental_details: {student_name: "Alice", date: "01/01/2000"}}])
  assert_equal([{:title=>"Harry Potter", :rental_details=>{:student_name=>"Alice", :date=>"01/01/2000"}}], library.list)
end

def test_info_from_name
  library = Library.new([{title: "Harry Potter", rental_details: {student_name: "Alice", date: "01/01/2000"}}])
  assert_equal({:title=>"Harry Potter", :rental_details=>{:student_name=>"Alice", :date=>"01/01/2000"}}, library.info_from_title("Harry Potter"))
end





















end
