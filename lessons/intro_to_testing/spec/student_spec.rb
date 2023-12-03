# Add the 2 requires you will need here
require 'rspec'
require './lib/student'


# Domain specific language

RSpec.describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new('Penelope')
      expect(student).to be_instance_of(Student)
      # write the code to initialize a new student object
    end

    it 'has name'
      student = Student.new('Penelope')
      expect(student.name).to eq('Penelope')
    end

    it 'has attributes' do
      student = Student.new('Penelope')
      expect(student.cookies).to eq([])
    end

  describe '#add_cookie' do
      it 'adds a cookie to a students cookies array' do
        student = Student.new('Penelope')

        student.add_cookie('Chocolate Chunk')
        student.add_cookie('Snickerdoodle')

        expect(student.cookies).to eq(['Chocolate Chunk', 'Snickerdoodle'])
    end
    # test it can add cookies
  end
end
end
