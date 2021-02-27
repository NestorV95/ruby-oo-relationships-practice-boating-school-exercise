require "pry"

class BoatingTest
    attr_accessor :student, :test_name, :test_status, :instructor #setter / getter for our instance variables

    @@all=[] #all array

    def initialize(student, test_name, test_status, instructor)
        @student = student #object
        @test_name = test_name #string
        @test_status = test_status #string
        @instructor = instructor #object
        self.class.all << self #stores instance in @@all array
        binding.pry
    end

    def self.all #return array of all boating instances 
        @all 
    end

end

puts "boatingtest.rb ran"
# BoatingTest class:

# should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# BoatingTest.all returns an array of all boating tests