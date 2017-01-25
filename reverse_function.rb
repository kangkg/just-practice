def runner(str) 
h = 7
letters = ["a","c","d","e","g","i","l","m","n","o","p","r","s","t","u","w"]
i = 0
  while i < str.length
    letter = str[i]
    index = letters.find_index(letter)
    h = (h * 37) + index
    i += 1
  end   
  p h
end

def opposite(num)
  letters = ["a","c","d","e","g","i","l","m","n","o","p","r","s","t","u","w"]
  str = ''
  i = 0
  while i < 7   
    index = num % 37
    str += letters[index]
    num = (num - index) / 37
    i += 1
  end
  p str.reverse
end

#  find this 667734139064
runner("leepdag")
# leepdag =  680131662011

opposite(680131662011) # prints leepdag
opposite(667734139064) # prints correct



