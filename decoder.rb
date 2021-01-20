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

def decode(morse_code)
  words = morse_text.split('|')
  words.map do |word|
    letters = word.split(' ')
    letters.map { |letter| MORSE.key(letter) }.join('')
  end.join(' ')
end

# Test with morse string -> should be text = "HEY JUDE DONT MAKE IT BAD"
morse = ".... . -.--|.--- ..- -.. .|-.. --- -. -|-- .- -.- .|.. -|-... .- -.."
decode(morse)
