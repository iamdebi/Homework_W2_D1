require('minitest/autorun')
require_relative('../library')
class TestLibrary < MiniTest::Test

  def test_can_create_book
    new_book = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
  end

  def test_title
    new_book = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    assert_equal("lord_of_the_rings", new_book.title)
  end

  def test_student_name
    new_book = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    assert_equal("Jeff", new_book.student_name)
  end

  def test_due_date
    new_book = Library.new("lord_of_the_rings", 'Jeff', "01/12/16")
    assert_equal("01/12/16", new_book.due_date)
  end

  def test_return_book_information
    new_book = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    assert_equal( {
    "Title" => "lord_of_the_rings", "Rental Details" => {"Student Name" => "Jeff", "Due Date" => "01/12/16"}}, new_book.book_information("lord_of_the_rings"))
  end

  def test_return_book_rental_details
    new_book = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    new_book.find_book_rental_details("lord_of_the_rings")
    assert_equal("Rental Details" => {"Student Name" => "Jeff", "Due Date" => "01/12/16"}, new_book.find_book_rental_details("lord_of_the_rings"))
  end





end
