#MY first try

def solve_cipher(word, shift)
  deciphered_word = ''
  word.each_char { |c| deciphered_word << (c.ord + shift).chr }
  deciphered_word
end
p solve_cipher('ifmmp', -1) #=> 'hello'


#My FINAL SOLUTION
def solve_cipher(word, shift)
  deciphered_word = ''
  word.each_char { |c| deciphered_word << (c.ord + shift).chr }
  return deciphered_word
end
solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)


#________________________________________________________________________
#final product

def solve_cipher(input, shift = -3)
	input.downcase.chars.map do |item|
		message = item.ord + shift
		if item.chr == " "
		elsif message < 97
			message = (message +26).chrelsif message > 122
		elsif message > 122
			message = 122.chr
		else message > 122
			message = 122.chr
		end 
		end.join 
solve_cipher("ifmmp", -3) #should return hello


#____________________another final product online blog_______
puts "Word please: "  #prompts user to write a word
text = gets.chomp.downcase
#gets takes the word the user writes
#chomp cutts off end the parametrs 

puts "Number please: " #prompts the user to write a number
n = gets.chomp.to_i

def caesar_cipher(text, n)
	alphabet = ('a'..'z').to_a 
	key = Hash[alphabet.zip(alphabet.rotate(n))]
	text.each_char.inject("") { |newtext, char| newtext + key[char] }
end

puts caesar_cipher(text, n)


















