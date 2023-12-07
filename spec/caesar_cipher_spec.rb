require './caesar_cipher.rb'

describe 'Caesar Cipher' do
  it "shifts mixed-case letters right & wrapping around" do
    expect(caesar_cipher("X-ray Tech", 14)).to eql("L-fom Hsqv")
  end
  it "shifts mixed-case letters left & wrapping around" do
    expect(caesar_cipher("Foo Bar", -10)).to eql("Vee Rqh")
  end
  it "shifts only letters" do
    expect(caesar_cipher('"Why, oh why?"[1]', -1)).to eql('"Vgx, ng vgx?"[1]')
  end
  it "handles large shifts right" do
    expect(caesar_cipher("Ad", 105)).to eql("Be")
  end
  it "handles large shifts left" do
    expect(caesar_cipher("Hi", -111)).to eql("Ab")
  end
  it "handles empty strings" do
    expect(caesar_cipher("", 4)).to eql("")
  end
end
