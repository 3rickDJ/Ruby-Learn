require_relative 'Person'

people = []

File.foreach('ages') do |line|
  line =~ /(\*):\.+(\d+)\$/
  p "#{Regexp.last_match(1)}, #{Regexp.last_match(2)}"
  # people << Person.new($1, $2) if line =~ /(\*):\s+(\d+)\$/
end
p people
