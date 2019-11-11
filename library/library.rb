class Library

  def initialize(title, student_name, due_date)
    @title = title
    @student_name = student_name
    @due_date = due_date
    @rental_details = {
         'student_name'=> @student_name,
         'due_date'=> @due_date
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

  def find_book_details(title)
    return title{@rental_details}
  end



end
