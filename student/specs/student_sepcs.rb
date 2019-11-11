require('minitest/autorun')
require_relative('../student')
class TestStudent < MiniTest::Test

  def test_can_create_student_object
    student = Student.new("Debbie", "G16")
  end

  def test_student_name
    student_Debbie = Student.new("Debbie", "G16")
    assert_equal("Debbie", student_Debbie.name)
  end

  def test_student_cohort
    student_Debbie = Student.new("Debbie", "G16")
    assert_equal("G16", student_Debbie.cohort)
  end

  def test_student_can_talk
    student_Debbie = Student.new("Debbie","G16")
    assert_equal("I can talk!", student_Debbie.can_talk)
  end

  def test_studnet_favourite_language
    student_Debbie = Student.new("Debbie", "G16")
    assert_equal("I love Ruby", student_Debbie.favourite_language("Ruby"))
  end


end
