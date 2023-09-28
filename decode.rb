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

# Morse code message decoding code

MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9'
}.freeze

def decode_char(morse_char)
  MORSE_CODE[morse_char] || ''
end

# puts decode_char(".-") => A

def decode_word(morse_word)
  morse_code_to_words = morse_word.split
  word = ''
  morse_code_to_words.each do |i|
    word += decode_char(i)
  end
  word
end

# puts decode_word("-- -.--") => MY

def decode_message(morse_message)
  morse_words = morse_message.split('   ')
  decoded_words = morse_words.map { |word| decode_word(word) }
  decoded_words.join(' ')
end

# puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
# output: A BOX FULL OF RUBIES
