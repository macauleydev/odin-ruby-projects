def caesar_cipher(string, shift)
  code_A = 65
  code_Z = 90
  code_a = 97
  code_z = 122

  ciphertext = ''
  string.each_codepoint do |code|
    if (code_A..code_Z).include?(code)
      ciphertext += shift_and_wrap(code, shift, code_A, 26).chr
    elsif (code_a..code_z).include?(code)
      ciphertext += shift_and_wrap(code, shift, code_a, 26).chr
    else
      ciphertext += code.chr
    end
  end

  ciphertext
end

def shift_and_wrap(number, shift, offset = 0, wrap_interval = 26)
  offset + ((-offset + number + shift) % wrap_interval)
end

# Test:
plaintext = "What a string!"
ciphertext = caesar_cipher(plaintext, 5)
p ciphertext
# => "Bmfy f xywnsl!"
