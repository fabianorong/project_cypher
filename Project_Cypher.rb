p "Enter the message you want to encrypt:"
text = gets

p "How many positions to shift? "
number_position = gets

text_in_array_number = text.bytes 
text_in_array_number.pop
 
text_shifted = []
text_converted_to_string = []

text_in_array_number.each do |letter|
    if letter.between?(32, 64) || letter.between?(91, 96) || letter >= 123
        text_shifted.push(letter)
    
    elsif letter.between?(97, 122) && ((letter + number_position.to_i) > 122)
        text_shifted.push((letter + number_position.to_i) - 26)              

    elsif letter.between?(65, 90) && ((letter + number_position.to_i) > 90)
        text_shifted.push((letter + number_position.to_i) - 26)             
   
    else
        text_shifted.push(letter+number_position.to_i)
    end
end

text_shifted.each {|letter| text_converted_to_string.push(letter.chr)}

p "Your encrypted message is: #{text_converted_to_string.join}"
