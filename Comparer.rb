class Integer
  def len
    if self == 0
      return 0
    else
      return Math.log10(self).to_i + 1
    end
  end
end

class Array
  def to_i
    self.inject{|n, d| n * 10 + d}
  end
end

def compairer(int1,int2)
  int1len = int1.len
  int2len = int2.len

  if int1len == 0 or int2len == 0
    return 0
  elsif int1len == 1 and int2len == 1
    return int1 == int2 ? 1 : 0
  elsif int1len != int2len
    return [int1len, int2len].min
  else
    if int1.digits.reverse.first == int2.digits.reverse.first
      int1 = int1.digits.reverse[1..].to_i
      int2 = int2.digits.reverse[1..].to_i
      return compairer(int1,int2)
    else
      return int1len
    end
  end
end
