3.times { print "SRUG" }
# SRUGSRUGSRUG
5.upto(10) { |i| print i, " " }
# 5 6 7 8 9 10
["Żubr", "Żywiec", "Harnaś"].select do |drink|
  drink.beer?
end
#=> ["Żubr", "Żywiec"]
open "data.txt" do |file|
  file.each_line do |line|
    MyParser.parse(line)
  end
end
