def decode_char(morse_char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---'  => 'J', '-.-'   => 'K', '.-..'  => 'L',
    '--' => 'M', '-.'    => 'N', '---'   => 'O', '.--.'  => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '' => ' '
  }

  morse_code[morse_char] || ''
end

def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

def decode(message)
  words = message.split('   ').map { |morse_word| decode_word(morse_word) }
  words.join(' ')
end

message_from_bottle = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode(message_from_bottle)

puts decoded_message
