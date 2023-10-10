def caesar_cipher(string, shift)
  code_A = 65
  code_Z = 90
  code_a = 97
  code_z = 122

  ciphertext = ''

  string.each_codepoint do |code|
    ciphertext +=
      case code
        when code_A..code_Z
          shift_and_wrap(code, shift, code_A, 26).chr
        when code_a..code_z
          shift_and_wrap(code, shift, code_a, 26).chr
        else
          code.chr
      end
  end

  ciphertext
end

def shift_and_wrap(number, shift, offset = 0, wrap_interval = 26)
  offset + ((number + shift - offset) % wrap_interval)
end

# Test:
plaintext = "What a string!"
ciphertext = caesar_cipher(plaintext, 5)
p ciphertext # "Bmfy f xywnsl!"
