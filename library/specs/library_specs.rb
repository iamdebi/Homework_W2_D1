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
    new_book.find_book_details("lord_of_the_rings")
    book_details = new_book.find_book_details("lord_of_the_rings")
    assert_equal({"student_name" => "Jeff", "due_date" => "01/12/16"}, book_details)
  end





end
