class NaughtyStrings
  def self.nice?(text)
    threeVowels = !!text.match(/([aeoiu][^aeoiu]*){3}/)
    twice = !!text.match(/([a-zA-Z])\1/)
    badTuples = !text.match(/(?:ab)|(?:cd)|(?:pq)|(?:xy)/)
    badTuples && threeVowels && twice
  end
end

if __FILE__ == $0
  strings = File.readlines("partI.txt")
  counter = 0
  strings = strings.collect do |line|
    NaughtyStrings.nice?(line) ? 1:0
  end
  p strings.sum
end
