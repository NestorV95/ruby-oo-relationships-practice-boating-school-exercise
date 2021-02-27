require "pry"

class Student
    attr_accessor :first_name

    @@all=[]

    def initialize(first_name)
        @first_name = first_name
        self.class.all << self
    end

    def self.all #calls @@all array
        @@all
    end

    def add_boating_test #literal constructor for new boating test instance 
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def all_instructors
        #return an array of instructors with whom this specific student took a boating test
        BoatingTest.all.select{|boating_test| boating_test.student == self ; boating_test.instructor}
    end

    def self.find_student(first_name)
        #output the student (Object) with that name
        self.all.find{|student| student.name == first_name}
    end

    def passed_test #itterates through all boating test instances and return instances where student == self & status == "passed"
       BoatingTest.all.select{|boating_test| boating_test.student == self && boating_test.test_status == "passed"}
    end

    def total_test
        BoatingTest.all.select{|boating_test| boating_test.student == self}
    end


    def grade_percentage
       passed_test.count / total_test.count
    end
end

puts "student.rb ran"
# Student class:

# should initialize with first_name
# Student.all should return all of the student instances
# Student#add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object).
# Student#all_instructors should return an array of instructors with whom this specific student took a boating test.
# Student.find_student will take in a first name and output the student (Object) with that name
# Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
