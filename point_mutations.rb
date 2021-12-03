# Problem: Create a method that takes a string and compares it to
#          another string of an returns the number of letters in the
#          strings at the same index that are different
#          - the length being compared will only extend to the shortest string
#          - this number is returned as the hamming_distance

# Example: When looking at the test suite, we need to create a class that
#          has two methods:
#          - a constructor method that assigns a string to an hamming_distance
#            variable
#          - a hamming_distance method that takes a string and compares it to
#            the instance variable of the object from the class

# Data/Structure: input: string
#                 output: integer

# Algorithm: - iterate over both strings (strands) from index 0 to the
#              index that is equal to the shorter of the two strings
#              * create a variable called length and assign it to the size,
#                represented by an integer, to the shortest strand
#              * create an array with range 0 to length and call each, then
#                pass the element to a block parameter called idx and in the
#                block compare strands at that index on both strands
#                - if negative, then add a one to differences
#              * create a variable called differences and assing it to 0
#            - add a number per iteration if the two objects at the same
#              index are different
#              * on iteration, if there is a difference at an index, add
#                1 to the value assinged to the variable differences
#            - return this number when hamming distance is called

# Code:

class DNATest
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    length = @strand > other_strand ? other_strand.size : @strand.size
    diffs = 0
    length.times.each { |idx| diffs += 1 if @strand[idx] != other_strand[idx] }
    diffs
  end
end
