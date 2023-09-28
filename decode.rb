TEST = {'A' => 'Apple', 'B' => 'Ball', 'C' => 'Cat', 'D' => 'Dog', 'E' => 'Easter'}

puts "Just the hash: #{TEST}"

def check (c)
  TEST[c]
end

puts "single char: #{check('A')}"

def mche (c)
  word = ''
  c.split('').each {|i| word += check(i)}
  word
end

print "word: \n"
puts mche ('ACD')

def sen (s)
  ten = ''
  s.split(' ').each do |i|
    ten += mche(i)
    ten+=' '
  end
  ten
end

print "Sentence: \n"
puts sen ('A BC DDD A')
