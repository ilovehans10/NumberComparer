class Integer
  def len
    if self == 0
      return 0
    else
      return Math.log10(self).to_i + 1
    end
  end
end

def compairer(int1,int2)
  int1len = int1.len
  int2len = int2.len

  if int1len == 0 or int2len == 0
    return 0
  elsif int1len != int2len
    if int1len < int2len
      puts "AAAA"
      return int1len
    elsif int1len > int2len
      puts "BBBB"
      return int2len
    end
  else
    puts int1.digits.first
    puts int2.digits.first
    if int1.digits.reverse.first == int2.digits.reverse.first
      puts "CCCC"
      return int1len
    end
  end
end

puts "1: " + compairer(10, 2 ).to_s #1
puts "2: " + compairer(10, 20).to_s #2
puts "3: " + compairer(20, 20).to_s #0
puts "4: " + compairer(23, 20).to_s #1
puts "5: " + compairer(22, 23).to_s #1
