class NaughtyStrings
  def self.nice?(text)
    threeVowels = !!text.match(/([aeoiu][^aeoiu]*){3}/)
    twice = !!text.match(/([a-zA-Z])\1/)
    badTuples = !text.match(/(?:ab)|(?:cd)|(?:pq)|(?:xy)/)
    badTuples && threeVowels && twice
  end
  def self.nicer?(text)
    pairTwice = !!text.match(/([a-zA-Z][a-zA-Z]).*\1/)
    oneBetweenTwo = !!text.match(/(\w).\1/)
    pairTwice && oneBetweenTwo
  end
end

if __FILE__ == $0
  strings = File.readlines("partI.txt")
  strings = strings.collect do |line|
    NaughtyStrings.nicer?(line) ? 1:0
  end
  p strings.sum
end
