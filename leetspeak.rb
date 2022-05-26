def get_player_input
    print 'Please, enter the words: '
    gets.chomp
end
  
def leetspeak ( player_input = get_player_input() )
    input_characters = player_input.split('')
    leetspeak_array = []

    input_characters.each_with_index do |input_letter , index|
        if input_letter.downcase == "e" 
            leetspeak_array.push('3')
        elsif  input_letter.downcase == "o" 
            leetspeak_array.push('0')
        elsif  input_letter == "I"
            leetspeak_array.push('1')
        elsif index != 0 && input_characters[index -1] != ' ' && input_letter.downcase == "s"  
            leetspeak_array.push('z')
        else  
            leetspeak_array.push(input_letter)       
        end
    end
    leetspeak_array.join("")
end


