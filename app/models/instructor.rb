require "pry"

class Instructor
   attr_accessor :name 

   @@all=[]

   def initialize(name)
    @name = name
    self.class.all << all 
    binding.pry
   end
    
   def self.all 
    @@all
   end 
 
   def passed_students  #itterates through boatingtest and returns array of students only if instructor == self
   BoatingTest.all.select{|btest| btest.instructor == self ; btest.student}
   end
   
   def find_test(student,test_name) #itterates through boating test and returns boatingtest if conditions met
    BoatingTest.all.find{|btest| btest.student == student && btest.test_name == test_name}
   end

   def pass_student (student, test_name) #calls my custom #find_test custom method if it doesnt find it, it creates new instance
    self.find_test(student, test_name) || BoatingTest.new(student, test_name, "passed", self)
   end

   def fail_student(student, test_name) #calls my custom #find_test custom method if it doesnt find it, it creates new instance 
    self.find_test(student, test_name) || BoatingTest.new(student, test_name, "failed", self)
   end

   def all_student #return all students only if the instructor in their shared boating instance == self
    BoatingTest.all.select{|boating_test| boating_test.instructor == self ; boating_test.student}
   end
end

puts "instructor.rb ran"
# Instructor class:

# initialize with a name
# Instructor.all should return all instructors
# Instructor#passed_students should return an array of students who passed a boating btest with this specific instructor.
# Instructor#pass_student should take in a student instance and btest name. If there is a BoatingTest whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching btest, this method should create a btest with the student, that boat btest name, and the status 'passed'. Either way, it should return the BoatingTest instance.
# Instructor#fail_student should take in a student instance and btest name. Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.
# Instructor#all_students should return an array of students who took a boating btest with this specific instructor.