def roman_to_int(s)
  valueHash = {I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000}
  symbolsOrdered = ["I", "V", "X", "L", "C", "D", "M"]
  output = 0
  s.split("").each_with_index do |numeral, i|
      if  i == s.length - 1
          output += valueHash[numeral.to_sym]
      elsif symbolsOrdered.index(numeral) < symbolsOrdered.index(s[i + 1])
          output -= valueHash[numeral.to_sym]
      else
          output += valueHash[numeral.to_sym]
      end
  end
  output
end


p roman_to_int("III")