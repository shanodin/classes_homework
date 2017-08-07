require("Minitest/autorun")
require_relative("./library.rb")

class TestLibrary <MiniTest::Test

# def setup
#   books = [
#     {title: "Lord of the Rings",
#      rental_details: {
#       student_name: "Matt",
#       date: "02/02/2002"
#       }
#     },
#     {title: "Patient Zero",
#      rental_details: {
#         student_name: "Rob",
#         date: "03/03/2003"
#       }
#     }
#   ]
#   Library.new(books)
# end

def test_add_new_book
  library = Library.new([])
  library.books.push({title: "Harry Potter", rental_details: {student_name: "Alice", date: "01/01/2000"}})
  assert_equal({title: "Harry Potter", rental_details: {student_name: "Alice", date: "01/01/2000"}}, library.books.last)
end

def test_return_list
  library = Library.new([])
  library.books.push({title: "Harry Potter", rental_details: {student_name: "Alice", date: "01/01/2000"}})
  assert_equal({:title=>"Harry Potter", :rental_details=>{:student_name=>"Alice", :date=>"01/01/2000"}}, library.list)
end























end
