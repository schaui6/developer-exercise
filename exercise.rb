class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  def self.marklar(str)
    # TODO: Implement this method
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  
  #Pseudocode
    # Assumption: fibonacci sequence begins with 1 and 1
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
    j = 1
    fib = [i+1,j]

    until count < 0
      sum = fib[i] + fib[j]
      fib.push(sum)
      count-=1
      i+=1
      j+=1
    end

    even = []
    fib.each do |num|
      if num % 2 == 0
        even.push(num)
      end
    end

    even.inject {|sum, num| sum + num} 
  end
end
