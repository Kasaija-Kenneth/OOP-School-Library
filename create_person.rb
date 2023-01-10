class CreatePerson
  def initialize(people)
    @people = people
  end

  def create_person
    input = collect_input
    case input
    when 1
      new_student = create_student
      add_to_collection(new_student)

    when 2
      new_teacher = create_teacher
      add_to_collection(new_teacher)

    else
      puts 'Sorry, The selected option is not defined '
      create_person
    end
  end

  private

  def collect_input
    print 'To create a person, type (1) for Student or (2) for Teacher: '
    gets.chomp.to_i
  end

  def age_name
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp

    [age, name]
  end

  def collect_specialization
    print 'Specialization: '
    gets.chomp
  end

  def class_get
    print 'Enter Classroom: '
    gets.chomp
  end

  def create_student
    age, name = age_name
    classroom = class_get
    Student.new(age, name, classroom)
  end

  def create_teacher
    age, name = age_name
    specialization = collect_specialization
    Teacher.new(age, name, specialization)
  end

  def add_to_collection(person)
    @people.push(person)
    puts "#{person.name} added successfully! "
  end
end