class Student


  #attr_accessor :name, :cohort

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def name_setter(new_name)
    @name = new_name
  end

  def cohort_setter(new_cohort)
    @cohort = new_cohort
  end


  def can_talk
    return "I can talk!"
  end

  def favourite_language(language)
    return "I love #{language}"
  end


end
