require_relative '../person'

RSpec.describe Person do
  describe '#initialize' do
    it 'creates a new person with a name and an age' do
      person = Person.new("Lanna", 23)
      expect(person.name).to eq("Lanna")
      expect(person.age).to eq(23)
    end
  end

  describe '#introduce' do
    it 'returns a greeting with their name and age' do
      person = Person.new("Ron", 26)
      expect(person.introduce).to eq("Hafa Adai, my name is Ron and I'm 26 years old.")
    end
  end

end

RSpec.describe Student do
  describe '#initialize' do
    it 'creates a new student with a name, age, and grade' do
      student = Student.new("Lanna", 23, "Coder")
      expect(student.name).to eq("Lanna")
      expect(student.age).to eq(23)
      expect(student.grade).to eq ("Coder")
    end
  end

  describe '#introduce' do
    it 'creates a greeting that includes name, age, and grade' do
      student = Student.new("Ron", 26, "CSG")
      expect(student.introduce).to eq("Hafa Adai, my name is Ron and I'm 26 years old. And I'm grade CSG.")
    end
  end

end

RSpec.describe Teacher do
  describe '#initialize' do
    it 'creates a new teacher with a name, age, and subject' do
      teacher = Teacher.new("Leon", 27, "Ruby")
      expect(teacher.name).to eq("Leon")
      expect(teacher.age).to eq(27)
      expect(teacher.subject).to eq("Ruby")
    end
  end
  
  describe 'introduce' do
    it 'creates a greeting that includes name, age, and subject' do
      teacher = Teacher.new("Lanna", 23, "Ruby")
      expect(teacher.introduce).to eq("Hafa Adai, my name is Lanna and I'm 23 years old. And I teach Ruby.")
    end
  end
end