def caesar_cipher(str, key)
  str.split.length == 1 ? cipher_word(str, key) : cipher_sentence(str, key)
end

def cipher_sentence(str, key)
  str 
    .split
    .map {|word| word = cipher_word(word, key)}
    .join(' ')
end

def cipher_word(word, key)
  word
      .split('')
      .map {|char| char = cipher_char(char, key)}
      .join
end

def cipher_char(char, key)
  if char.ord >= 65 && char.ord <= 90 # capital asci values A-Z : 65-90
    shift_char(char, key, 90)
  elsif char.ord >= 97 && char.ord <= 122 # lowercased asci values a-z : 97-122
    shift_char(char, key, 122)
  end
end

def shift_char(char, key, asci_max)
  char_ciphered = char.ord + key 
  char_ciphered > asci_max ? char_ciphered = char_ciphered - 26 : char_ciphered
  char_ciphered.chr
end