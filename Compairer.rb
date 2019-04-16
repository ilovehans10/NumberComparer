class Integer
  def len
    Math.log10(self).to_i + 1
  end
end

def compairer(int1,int2)
  int1len = int1.len
  int2len = int2.len

  if int1len == 0
    return 0
  elsif int1len > int2len
    return int1len
  elsif int1len < int2len
    return int2len
  end
end

puts compairer(10,2)
puts compairer(10,20)
puts compairer(20,20)
puts compairer(23,20)
puts compairer(22,23)
