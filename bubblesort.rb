require 'pry'
#Bubble sort program 
# accepts array input in the method.
# returns and prints out array that is sorted from smallest and greatest.

def bubblesort(array) 
    
    #declare sorted boolean as false
    sorted = false
    
    # binding.pry
    
    # while sorted is not true. Continue this while loop.
    while sorted == false
        
        # Initialize swapped for element as false.
        # Each pass of array as we sort, we begin / reset by setting swapped to be false.
        swapped = false

        # Iterate through array length indices. Three dots are for non-exclusive to end of range specified. 
        # Start from 0 index to array length minus 1. Necessary to compare 2nd to last element with last element or else out of bound.
        for x in 0...array.length()-1        
            
            # Swap if current index is larger than next index.
            if array[x] > array[x+1]

                # Swap it. This is the way to swap a,b = b,a in ruby.
                array[x], array[x+1] = array[x+1], array[x]
                puts "Swapped. Array is now: #{array}"
                
                # set swapped boolean to true if we swapped 2 elements
                swapped = true 

            # if we reach 2nd to last of array and we did not swap once (false), everything is in order and change
            # sorted --> true    
            elsif x.to_i==array.length()-2 && swapped == false
                # sorted set to True to break out of while loop.
                sorted = true
            end

        end   ### end of for loop. 
    
        # If exited Boolean Conditional and swapped, sorted is still false so we re-enter the while loop.

    end  ## end of sorted while loop.

    p array  ## print out the array after sorted

end # end of bubblesort method

array = [4,3,78,2,0,2]
p bubblesort(array)
