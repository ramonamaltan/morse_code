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

def encode(text_string)
  # ignore special characters
  pattern = /('|"|\.|\*|\/|-|\\|\)|,|\+|\(|\^|\?|!|~|`)/
  words = text_string.upcase.gsub(pattern, '').split(' ')
  p words.map { |word| encode_word(word) }.join('|')
end

def encode_word(word)
  word.split('').map { |letter| MORSE[letter.upcase] }.join(' ')
end

# Test with text string -> should be morse = ".... . -.--|.--- ..- -.. .|-.. --- -. -|-- .- -.- .|.. -|-... .- -.."
text = "Hey Jude, don't make it bad"
encode(text)
