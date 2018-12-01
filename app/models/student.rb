class Student
    attr_accessor :first_name, :last_name

    @@all =[]

    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name

        @@all << self
    end

    def self.all
        @@all
    end

    def self.full_names
        @@all.map do |student|
            "#{student.first_name} #{student.last_name}"
        end
    end

    #student, test_name, test_status, instructor)

    def add_boating_test(instructor, test_name, test_status)
        BoatingTest.new(self,test_name, test_status, instructor)
    end

    def self.find_student(full_name)
        BoatingTest.all.select do |test|
            "#{test.student.first_name} #{test.student.last_name}" == full_name
        end
    end

    def tests
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

end
