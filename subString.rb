#  Define Dictionary Array for reference.
dictionary = ["is", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

userString = "Howdy How"

# Create the method/function. 
# Method Name: subString(input1, input2)
# Input1 -> user string
# Input2 -> dictionary array to check user string against for matches
def subString(userString, dictionary)

    # Create hash to store matches between dictionary and userString
    myhash = Hash.new

    #Convert userstring into all lower case
    userString = userString.downcase

    # make iteration over dictionary
    x = 0

    # make iteration over userString_Array 
    y = 0
    userString_Array = userString.split(" ") # split method to create array
    # check logic whether our userString includes the dictionary element [x] index.
    # p userString.include?(dictionary[0])
    
    # Create for loop iterate through dictionary array and for each element in array
    for y in userString_Array do # flip this with 

        for x in dictionary do  # FLIP this with the above for loop
            
            # If matches, create a hash table and key is the dictionary element, increase counter by 1
            if y.include?(x) == true 
                # if hash key does not exist, create it and add 1 as value to the key
                if myhash.key?(x) != true
                    myhash[x] = 1
                
                # if key exists, then increment by 1.
                elsif myhash.key?(x) == true
                    myhash[x] += 1
                
                end      
       
            end
        end
    end 
    
    # sort the hash alphabetically
    sorted_hash = Hash[myhash.sort]
    
    # return sorted_hash to user
    return sorted_hash
    
end 


puts subString("Howdy partner, sit down! How's it going?",dictionary)

# p userString.split(" ")