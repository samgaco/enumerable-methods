#my_select // Test Cases
puts [1,2,3,4,5].my_select { |num|  num%2==0  }
#Should return [2,4]


#my_all // Test Cases
puts ["ant" ,"bear" ,"cat"].my_all? { |word| word.length >= 3 }
puts ["ant" ,"br" ,"cat"].my_all? { |word| word.length >= 3 }
#should return true / false


#my_any? // Test Cases 
puts ["nt" ,"aar" ,"cat"].my_any? { |word| word.length >= 3 }
puts ["at" ,"br" ,"ct"].my_any? { |word| word.length >= 3 }
#return true / false


#my_none?
puts [1, 3, 2].my_none? {|i| i%2==0} 
puts [1, 3, 1].my_none? {|i| i%2==0} 
#return false / true 


#my_count // Test Cases
ary = [1,2,3,4,5]
puts ary.my_count                  
puts ary.my_count(2)     
puts ary.my_count { |x| x%2 == 0 }


#my_map // Test Cases 
print array.my_map { |n| n * 2 }


