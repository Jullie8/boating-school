class Instructor
    attr_accessor :name

    @@all =[]

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def boating_test
        BoatingTest.all.select do |test|
            test.instructor == self
        end
    end

    def fail_student(student_name, test_name)
           found = boating_test.find do |test|
                if test.student == student_name && test.test_name == test_name
                    test.test_status = "failed"
                end
            end
    end

    def pass_student(student_name, test_name)
           found = boating_test.find do |test|
                if test.student == student_name && test.test_name == test_name
                    test.test_status = "passed"
                end
            end
    end

end
