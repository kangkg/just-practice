# reverse words in a sentence

require 'benchmark'

given_sentence = "Hello everyone! I'm Ken!"

def reverse_word(word)
  # the simple way is to .reverse.. but lets ignore that!
  new_word = ""
  counter = word.length - 1
  until counter < 0
    new_word << word[counter]
    counter -= 1
  end
  new_word
end

def reverse_sentence(given_sentence)
  return nil if given_sentence.nil?
  new_sentence = ""
  counter = 0
  until counter >= given_sentence.length
    new_sentence << reverse_word(given_sentence[counter])
  end
  new_sentence
end
####


################### matt's code ###
reverse_sentence(given_sentence)



### some benchmarks of word! ####
test_word = 'testword'

n = 500000
Benchmark.bm do |x|
  x.report {
    n.times do
      test_word.reverse
    end
  }
end

p reverse_word(test_word)
n = 500000
Benchmark.bm do |x|
  x.report {
    n.times do
      reverse_word(test_word)
    end
  }
end

