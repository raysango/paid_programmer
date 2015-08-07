# 6 * 21 = 126
# 6 and 21 would be valid 'fangs' for a vampire number as the 
# digits 6, 1, and 2 are present in both the product and multiplicands

# 10 * 11 = 110
# 110 is not a vampire number since there are three 1's in the
# multiplicands, but only two 1's in the product
# Create a function that can receive two 'fangs' and determine if the product of the two is a valid vampire number.

def vampire_test(a,b)
  x = (a*b).to_s.split("").sort
  y = "#{a}#{b}".to_s.split("").sort
  if x == y
  	puts true
  else
  	puts false
  end
end

vampire_test(10,11)