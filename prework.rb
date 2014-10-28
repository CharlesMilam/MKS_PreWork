magic_dog = nil

if magic_dog
  puts "Magic Dog lives!"
else
  puts "There is no Magic Dog."
end

milams = ["charles", "grace", "alli"]
dad = "charles"
daughter1 = "grace"
daughter2 = "alli"
  
 if dad == "charles" && daughter1 == "grace" && daughter2 == "alli"
   puts "All the Milams are here"
 elsif dad == "charles" || daughter1 == "grace" || daughter2 == "alli"
  puts "One of the Milams is here"
 else
   puts "No Milams are here"
 end
 
 milam = "somebody"
 
 which_milam = case milam
 when dad
   "Charles"
 when daughter1
   "Grace"
 when daughter2
   "Alli"
 else
   "No Milam"
 end
 
 puts "#{which_milam} is here"
 
 index = 0
 
milams.each do |milam|
  if milam == "grace"
    puts "Grace is at index " + index.to_s
  else
    index += 1
  end
 end
 
 hash_milams = Hash.new
 
milams.each_with_index {|item, index| hash_milams[item] = index}
  
puts hash_milams

hash_milams.each {|key, val| if key == "grace" then puts "Grace is at index #{val}." end} 