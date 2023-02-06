if fork.nil?
  exec "ruby ./array.rb"
end
puts 'sleep 5 in running two programs'
sleep(5)
puts 'Ejecutar ls'
a = `ls -lhA`
puts a
