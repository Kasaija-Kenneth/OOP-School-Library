require_relative '../person'
require_relative '../book'
require_relative '../rental'

describe Person do
  context 'Unit Test: ' do
    new_person = Person.new(45, 'Prof. Blessing Blast', 234)
    # new_person.send(:correct_name)
    # new_person.send(:of_age)

    it 'create a new Person when person class is instantiated' do
      expect(new_person.age).to eq 45
      expect(new_person.name).to eq 'Prof. Blessing Blast'
      expect(new_person.id).to eq 234
    end
    it 'Person can use Service' do
      expect(new_person.can_use_service).to eq true
    end
    it 'person can make rental' do
      book = Book.new('Introduction to CS', 'Ruby Spec')
      date = '23/01/12'
      expect(new_person.add_rental(date, book).date).to eq('23/01/12')
    end
    it 'should return of_age  to be true' do
      expect(new_person.send(:of_age)).to eql(true)
    end
    it 'should return the correct name' do
      expect(new_person.send(:correct_name)).to eq('Prof. Blessing Blast')
    end
  end
end
