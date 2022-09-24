# Morse code library

def decode_character(char)
  morse = {
    '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd',
    '.' => 'e', '..-.' => 'f', '--.' => 'g', '....' => 'h',
    '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l',
    '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p',
    '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't',
    '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x',
    '-.--' => 'y', '--..' => 'z'
  }
  morse[char]
end

puts decode_character('-...')

# Create a method to decode a Morse code character, takes a string parameter,
# and return the corresponding character in uppercase (e.g. decode_char(".-") returns "A").

def decode_char(string)
  string.upcase
end

puts decode_char(decode_character('-...'))

# Create a method to decode an entire word in Morse code, takes a string parameter,
# and return the string representation.
# Every character in a word will be separated by a single space (e.g. decode_word("-- -.--") returns "MY").

def decode_word(string)
  word = ''
  string.split.each { |char| word += decode_char(decode_character(char)) }
  word
end

puts decode_word('-- -.--')

# Create a method to decode the entire message in Morse code, takes a string parameter
# and return the string representation.
# Every word will be separated by 3 spaces (e.g.  decode("-- -.--   -. .- -- .")

def decode_message(string)
  message = ''
  string.split('   ').each { |word| message += "#{decode_word(word)} " }
  message
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# A BOX FULL OF RUBIES
