require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'agerage_age class method' do
    it 'should calculate the average age of astronauts' do
      astronaut_1 = Astronaut.create(name: "Astronaut 1", age: 51, job: "Engineer")
      astronaut_2 = Astronaut.create(name: "Astronaut 2", age: 49, job: "Engineer")


      expect(Astronaut.average_age).to eq 50
    end 
  end
end
