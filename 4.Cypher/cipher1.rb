def solve_cipher(word, shift)
  deciphered_word = ''
  word.each_char { |c| deciphered_word << (c.ord + shift).chr }
  return deciphered_word
end
print solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)