

def caesar_cipher(string, shift_factor)
code_A = 65
code_Z = 90
code_a = 97
code_z = 122
  # Convert characters to numbers (codes)
  numbers = string.codepoints
  # Filter for letters
  # Modify those numbers according to shift_factor, including:
  # Wrap around z to a and Z to A.


  ciphertext_array = numbers.map do |n|
    if (code_a..code_z).include?(n)
      shift_and_wrap(n, shift_factor, code_a, 26).chr
    elsif (code_A..code_Z).include?(n)
      shift_and_wrap(n, shift_factor, code_A, 26).chr
    else
      n.chr
    end
  end

  ciphertext = ciphertext_array.join

  # Convert those numbers back to letters
  # Return the encrypted string
  ciphertext
end

def shift_and_wrap(number, shift_amount, offset = 0, wrap_length = 26)
  offset + ((-offset + number + shift_amount) % wrap_length)
end

# Test:
plaintext = "What a string!"
ciphertext = caesar_cipher(plaintext, 5)
p ciphertext
# => "Bmfy f xywnsl!"
