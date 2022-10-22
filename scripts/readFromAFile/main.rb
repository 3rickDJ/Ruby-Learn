require_relative 'Person.rb'

people = Array.new

File.foreach("ages") do |line|
  people << Person.new($1, $2) if line =~ /(\*):\s+(\d+)/
end
p people
