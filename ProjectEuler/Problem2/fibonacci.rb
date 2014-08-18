
memo = {1=>1, 2=>1}

def fibonacci(n)
  memo[n] ||= fibonacci(n-2) + fibonacci(n-1)
end

Inf = 1.0 / 0.0

(1..Inf).each { |n| # just because this is awesome :D 
  val = fibonacci(n)
  sum += val if val.even?
  break if val >= 4000000  
}
