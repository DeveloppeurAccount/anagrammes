if (ARGV.length != 2)
    puts "#{__FILE__} requires two arguments"
    exit
end
#just to comment
word_to_compare = ARGV[0].split('')
anagram_file = ARGV[1]

word_list = []
position = 0
File.foreach(anagram_file) { |line| word_list[position] = line.chomp.split(''); position += 1 }

anagrams = []
line = 0
while (line < word_list.length)
    difference = word_to_compare - word_list[line]
    if difference.empty? == true
        anagrams << word_list[line].join('')
    end
    line += 1
end

puts anagrams.inspect
