movie = "Goonies"
puts movie
puts "Your favourite movie is #{movie}"
puts movie.class
puts movie + (2+2).to_s

# variables can point to numbers

thumbs_up = 10
thumbs_down = 2

rank = thumbs_up - thumbs_down
puts rank
puts rank.class
current_time = Time.new
puts current_time
puts "current time is : #{current_time}"

puts movie.length
# the next academy winning award, jaja
puts movie.reverse

puts movie.center(30)

puts movie.ljust(30, '.')

#numbers are objects too!
puts rank.to_s
puts rank.to_f
puts rank.to_i

# an operator is a method
puts rank*2
puts rank.*(2)

## command line utility for documentation
#➜ ri <class>
#➜ ri <class>.<method>
#➜ ri <method>

## Methods ending in '?' are called predicate methods
# only returns a true or false value (asking a question)
puts movie.empty?
