# Exercise:
# Instructions:
# Define a class of your choice
# Create one method that isn't private, that calls the private methods you will be creating.
# Use the 'private' method to make 2-3 private methods
# Instantiate an object of your class and test it

class Profile
  def person(name)
    puts "Name: #{name}"
  end

  def full_profile
    ssn
    address
    date_of_birth
    return "This is the full profile."
  end

  private

  def ssn
    puts "SSN: 111-22-3333"
  end

  def address
    puts "Address: 123 Yigo, Guam"
  end

  def date_of_birth
    puts "DOB: mm-dd-yyyy"
  end
end

person1 = Profile.new

person1.person("Junior")
person1.full_profile