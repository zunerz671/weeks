class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    return "Hafa Adai, my name is #{@name} and I'm #{@age} years old."
  end

end

class Student < Person
  attr_accessor :grade

  def initialize(name, age, grade)
    super(name, age)
    @grade = grade
  end
  
  def introduce
    super + " And I'm grade #{@grade}."
  end

end

class Teacher < Person
  attr_accessor :subject

  def initialize(name, age, subject)
    super(name, age)
    @subject = subject
  end

  def introduce
    super + " And I teach #{@subject}."
  end

end
