def caesar_cipher(string, shift)
  punctuation = [".",",",":",";","?","(",")","[","]","!","_","-","/"]
  string.each_char {|c|
    unless punctuation.include? c
      puts c
    else
      puts "@"
    end
  }
end

phrase = gets.chomp
toshift = gets.chomp
caesar_cipher(phrase, toshift)