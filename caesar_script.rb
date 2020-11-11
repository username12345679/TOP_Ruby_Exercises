require 'pry'

def caesar_cipher(userString, shiftFactor)

    # shiftFactor is Integer.
    # userString is a String.

    #Convert userString into array char ascii number.
    array1 = userString.chars.map{|x| x.ord}

    # # create loop iterate over ascii version of string
    i = 0
    while i < array1.length do

        # situation 1 Lowercase if greater than z shift
        if (array1[i] + shiftFactor) > 122 && array1[i] >= 97 && array1[i] <= 122  
            array1[i] = (array1[i] + shiftFactor-122) + 96
        
        #situation 2 Lowercase proceed with shift no out of bounds
        elsif (array1[i] +shiftFactor) <=122 && array1[i] >= 97 && array1[i] <= 122  
            array1[i] = array1[i] + shiftFactor

        #situation 3: UpperCase if Greater than Z shift
        elsif (array1[i] + shiftFactor) > 90 && array1[i] >= 65 && array1[i] <= 90
            array1[i] = (array1[i] + shiftFactor - 90) + 64

        #situation 4: UpperCase proceed with shift no out of bounds
        elsif (array1[i] + shiftFactor) <= 90 && array1[i] >= 65 && array1[i] <= 90
            array1[i] = array1[i] + shiftFactor
        end

        # increase counter by 1
        i = i + 1    
    end

    x = array1.map{ |c| c.chr}.join('')
    
    # return the result
    return x

end  # end of caesar_cipher program

  
p caesar_cipher("What a string!",5)