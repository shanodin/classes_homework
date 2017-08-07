require("Minitest/autorun")
require_relative("./classes.rb")

class TestClasses <MiniTest::Test


def test_student_name
  student = Student.new("Alice", 15, "challenging in a good way")
  assert_equal( "Alice", student.name() )
end

def test_student_cohort
  student = Student.new("Alice", 15, "challenging in a good way")
  assert_equal( 15, student.cohort() )
end

def test_student_catchphrase
  student = Student.new("Alice", 15, "challenging in a good way")
  assert_equal("challenging in a good way", student.catchphrase() )
end

def test_student_is_social
  student = Student.new("Alice", 15, "challenging in a good way")
  assert_equal("challenging in a good way", student.talk_to_me())
end

def test_student_fave_language
  student = Student.new("Alice", 15, "challenging in a good way")
  assert_equal("My favourite language is Ruby.", student.fave_lang("Ruby") )
end





end
