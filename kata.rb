#https://www.codewars.com/kata/5c1bb3d8e514df60b1000242/train/ruby
def artificial_rain(garden)
  left = 0
  longest_section = 0
  current_section = 1
  for i in 1...garden.length
    if garden[i] < garden[i - 1]
      left = i
    elsif garden[i] > garden[i-1]
      longest_section = longest_section < current_section ? current_section : longest_section
      current_section = i - left
    end
    current_section+=1
  end
  return longest_section > current_section ? longest_section : current_section
end

#https://www.codewars.com/kata/58184387d14fc32f2b0012b2/train/ruby
def f (x)
  x / (Math.sqrt(1 + x) + 1)
end

#https://www.codewars.com/kata/586f6741c66d18c22800010a/train/ruby
def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).sum
end

#https://www.codewars.com/kata/582cb0224e56e068d800003c/solutions/ruby/me/best_practice
def litres(time)
  return (time * 0.5).floor
end

#https://www.codewars.com/kata/pole-vault-starting-marks
def starting_mark(height)
  per_sm = (10.67 - 9.45) / (1.83 - 1.52)
  start_value = 10.67 - per_sm * 1.83
  return (start_value + per_sm * height).round(2)
end
