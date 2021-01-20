MORSE = {
  "A" => ".-",
  "B" => "-...",
  "C" => "-.-.",
  "D" => "-..",
  "E" => ".",
  "F" => "..-.",
  "G" => "--.",
  "H" => "....",
  "I" => "..",
  "J" => ".---",
  "K" => "-.-",
  "L" => ".-..",
  "M" => "--",
  "N" => "-.",
  "O" => "---",
  "P" => ".--.",
  "Q" => "--.-",
  "R" => ".-.",
  "S" => "...",
  "T" => "-",
  "U" => "..-",
  "V" => "...-",
  "W" => ".--",
  "X" => "-..-",
  "Y" => "-.--",
  "Z" => "--.."
}

def decode(morse_text)
  words = morse_text.split('|')
  p words.map { |word| decode_word(word) }.join(' ')
end

def decode_word(morse_word)
  letters = morse_word.split(' ')
  letters.map { |letter| MORSE.key(letter) }.join('')
end

# Test with morse string -> should be text = "HEY JUDE DONT MAKE IT BAD"
morse = ".... . -.--|.--- ..- -.. .|-.. --- -. -|-- .- -.- .|.. -|-... .- -.."
decode(morse)
