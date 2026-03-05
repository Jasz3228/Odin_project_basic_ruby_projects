def caesar_cipher(text, shift)
  text.chars.map do |char|
    if ('a'..'z').include?(char)
      ((char.ord - 97 + shift) % 26 + 97 ).chr
    elsif ('A'..'Z').include?(char)
      ((char.ord - 65 + shift) % 26 + 65 ).chr
    else 
      char
    end
  end.join
end

puts caesar_cipher('What a string!', 5)
