newfile = open("ex9_sample.txt", "r")

newhash = Hash.new
newfile.each_line do |line|
words = line.split
words.each do |word|
if newhash.has_key?(word)
newhash[word] = newhash[word] + 1
else
newhash[word] = 1
end
end
end

newhash.each{|i| puts "#{i[0]} => #{i[1]}"}
