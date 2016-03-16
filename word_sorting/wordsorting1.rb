def sort_text(sentence)
 	sentence.split.sort_by { |word| word.downcase.gsub(/[^a-z ]/i,'')	 }
end

word = "My name is Sarah"
print sort_text (word)



