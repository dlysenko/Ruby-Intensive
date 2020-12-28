# 6.	We have chars mapping: A => T, C => G. You need to create a converter for strings with the results:
# "ATTGC" -> returns "TAACG", "GTAT" -> returns "CATA"

def CharMapping(string)
  string.gsub(/[ATCG]/,"A"=>"T","T"=>"A","C"=>"G","G"=>"C")
end

puts CharMapping("ATTGC")
puts CharMapping("Dmitry molodets AOP")
