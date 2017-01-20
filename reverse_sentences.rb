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
  
  
end
####


################### matt's code ###
def reverse_word_2(word)
  i = 0 
  temp = ''
  while i < word.length/2
    temp = word[i]
    word[i] = word[-1-i]
    word[-1-i] = temp
    i += 1
  end
  word
end




### some benchmarks! ####
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

