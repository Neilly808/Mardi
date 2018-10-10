def chiffre_de_cesar(string, shift)
alphabet   = Array('a'..'z')
encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
string.chars.map { |c| encrypter.fetch(c, " ") }
end

puts chiffre_de_cesar("what a string ", 3).join