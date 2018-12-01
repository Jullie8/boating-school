require_relative '../config/environment'

# Declare your variables here~~~

jullie =  Student.new("jullie", "le")
luis =  Student.new("luis", "don")
mike =  Student.new("mike", "leaf")

kevin = Instructor.new("kevin")
walt =  Instructor.new("walt")
kittie = Instructor.new("kittie")

test1 = BoatingTest.new(jullie, "code test", "pending", kevin)
test2 = BoatingTest.new(luis, "hip hop test", "pending", kittie)
test3 = BoatingTest.new(mike, "regents", "pending", walt)
test4 = BoatingTest.new(jullie, "retake 1", "pending", kevin)


# don't remove!
binding.pry
0
