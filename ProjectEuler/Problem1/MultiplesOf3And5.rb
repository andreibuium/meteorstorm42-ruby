

#---------------------------------------------------------------------
# Returns the powerset of the given set
# I stole this recursive algorithm from the interwebz
#---------------------------------------------------------------------
def powerset(set)
  return [set] if set.empty?

  item = set.pop
  subset = powerset(set)  
  subset | subset.map { |x| x | [item] }
end


#---------------------------------------------------------------------
# Returns the sum that we get from adding together the multiples
# of all the numbers in the given multiples variable, up to the 
# given upper_limit.
# It uses sum_of_multiple to get each multiple's individual sum
# and then subtracts out the dublicates (TOO MANY TIMES XD - needs rethinking... but works for Problem 1 if just 2 multiples)
# Example:
#     If we list all the natural numbers below 10 that are multiples of 3 or 5, 
#     we get 3, 5, 6 and 9. The sum of these multiples is 23.
# +multiple+:: the multiple we're incrementing by
# +upper_limit+:: the upper limit where the summing stops, inclusive
#---------------------------------------------------------------------
def sum_of_multiples(multiples, upper_limit)
  
  sum = 0
  multiples.each{ |m| sum += sum_of_multiple(m, upper_limit) }
  
  multiples_powerset = powerset(multiples)
  
  # puts "powerset: " + multiples_powerset.to_s
  multiples_powerset.each{ |multiples_subset|
    
    next if multiples_subset.length == 0
    
    # puts "subset: " + multiples_subset.to_s
    lcm = multiples_subset.reduce(:lcm)
    # puts "lcm: " + lcm.to_s
    times_to_subtract = multiples_subset.length-1
    # puts "times_to_subtract " + times_to_subtract.to_s
    to_subtract = sum_of_multiple(lcm, upper_limit)
    # puts "to_subtract " + to_subtract.to_s
    
    sum -= to_subtract * times_to_subtract
  }
    
  sum
end


#---------------------------------------------------------------------
# Returns the sum that we get from adding multiples of the given multiple
# up to the given upper_limit
# +multiple+:: the multiple we're incrementing by
# +upper_limit+:: the upper limit where the summing stops, inclusive
#---------------------------------------------------------------------
def sum_of_multiple(multiple, upper_limit)
  
  num_numbers = upper_limit / multiple  # integer division on purpose
  odd = num_numbers % 2 == 1
  
  first_number = multiple
  last_number =  multiple * num_numbers
  
  pairs = num_numbers / 2 # integer division on purpose
  sum = (first_number + last_number) * pairs
  sum += ((num_numbers / 2 + 1) * multiple) if odd
  
  sum 
end
