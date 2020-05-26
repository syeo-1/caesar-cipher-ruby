# require "pry"

def caesar_cipher(string, shift)
  punctuation = [".",",",":",";","?","(",")","[","]","!","_","-","/"," "]
  upper = ("A".."Z").to_a # 3 dots for exclusive, 2 for inclusive (of Z)
#   print upper
  result_arr = []
  string.each_char {|c|
    unless punctuation.include? c
      if upper.include? c
        ord_val = c.ord + shift
        final_val = ord_val > 90 ? ord_val-26 : ord_val
        result_arr.push(final_val.chr.upcase)
      else
        ord_val = c.ord + shift
        final_val = ord_val > 122 ? ord_val-26 : ord_val
        result_arr.push(final_val.chr)
      end
    else
      result_arr.push(c)
    end
  }
  puts result_arr.join("")
end

phrase = gets.chomp
toshift = gets.chomp.to_i
# phrase = "What a String!"
# toshift = 5
caesar_cipher(phrase, toshift)