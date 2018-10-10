
def jean_michel_data
  dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "low", "own", "part", "partner", "sit", "sit"]
    dictionnary.uniq.each do |elem|
  puts "#{elem}\t#{dictionnary.count(elem)}"
    end
end
jean_michel_data

 sentence = "Howdy partner, sit sit down! How's it going?"
  frequence = Hash.new(0)
  words = sentence.tr('.,;"!\'?"', '').downcase.split(' ')
  words.each do |word|
    frequence[word] += 1
    end

a = frequence.sort_by { |word, count| count }
a = a.reverse
puts a.inspect