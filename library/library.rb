class Library

attr_reader :books
attr_writer :books

def initialize( books )
  @books = books

  books = [
    {title: "Lord of the Rings",
     rental_details: {
      student_name: "Matt",
      date: "02/02/2002"
      }
    },
    {title: "Patient Zero",
     rental_details: {
        student_name: "Rob",
        date: "03/03/2003"
      }
    }
  ]
end

books = [
  {title: "Lord of the Rings",
   rental_details: {
    student_name: "Matt",
    date: "02/02/2002"
    }
  },
  {title: "Patient Zero",
   rental_details: {
      student_name: "Rob",
      date: "03/03/2003"
    }
  }
]

def list
  return Library.new([])
end






end
