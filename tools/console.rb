require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
BoatingTest.new("sponge bob", "driving", "failed","ms. puff")
BoatingTest.new("patrick star", "driving", "failed","ms. puff")
BoatingTest.new("sandy cheeks", "karate", "passed", "fuzzy acorns")
BoatingTest.new("patrick star", "jelly fishing", "passed","spongebob")
BoatingTest.new("patrick star", "bubble blowing", "passed","spongebob")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

