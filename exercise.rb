class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  #Pseudocode
    # Assumptions: 
      # "str" is a sequence of words separated by spaces
      # input is a string - "The quick brown fox"
      # output is a marklarized string that retains end of word punctuation and capitalization - "The marklar marklar fox"
    # separate string into words
    # create an array to store the marklarized string
    # look at each word in the string to determine if it should be marklarized
      # all words more than 4 characters in length should be marklarized
    # Reassign the word's value to 'marklar'
      # if the word is capitalized, reassign value to 'Marklar'
      # if the word has an end-of-word punctuation, store the punctuation in a variable, reassign the word's value to marklar + variable
    # Add each word into the output array, and if the word is marklarized, place the marklarized word instead
    # join the output array to make it one string
    # return the output

  def self.marklar(str)
    # TODO: Implement this method
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  
  #Pseudocode
    # Assumptions: 
      # fibonacci sequence begins with 1 and 1
      # input is an integer (target number of elements fibonacci sequence)
      # output is an integer (sum of all even elements in target number of fibonacci sequence)
    # create an fibonacci array and place starting values
    # iterate through array n times
    # sum elements in last position and last position - 1
    # push sum into fibonacci array as the last element
    # create an array to store all even numbers of the fibonacci sequence
    # iterate through the fibonacci array and push all the even elements into the even array
    # sum each number of the even array
    # return the sum

  def self.even_fibonacci(nth)
    count = nth - 3
    i = 0
    fib = [i+1,i+1]
    even = []

    until count <= 0
      sum = fib[i] + fib[i + 1]
      fib.push(sum)
      even.push(sum) if sum % 2 == 0
      count-=1
      i+=1
    end
      
    even.reduce(:+)
  end

end
