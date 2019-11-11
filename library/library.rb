class Library

  def initialize(title, student_name, due_date)
    @title = title
    @student_name = student_name
    @due_date = due_date
    @rental_details = {
         'Student Name'=> @student_name,
         'Due Date'=> @due_date
       }
    @book = {
      "Title" => @title,
      "Rental Details" => @rental_details
    }
  end

  def title
    return @title
  end

  def student_name
    return @student_name
  end

  def due_date
    return @due_date
  end

  def book_information(title)
    return @book
  end

  def find_book_rental_details(@title)
    return @rental_details
  end



end
