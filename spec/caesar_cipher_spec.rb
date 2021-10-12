require_relative '../lib/caesar_cipher'

describe "cipher_char method" do
  it "should return the adequatly shifted character" do
    expect(cipher_char("a", 3)).to eq("d")
    expect(cipher_char("a", 27)).to eq("b")
  end
  it "should work with uppercase and conserve them" do
    expect(cipher_char("A", 3)).to eq("D")
    expect(cipher_char("A", 27)).to eq("B")
  end
end

describe "cipher_word method" do
  it "should return the adequatly shifted word" do
    expect(cipher_word("atom", 3)).to eq("dwrp")
  end
end

describe "cipher_sentence method" do
  it "should return the adequatly shifted sentence" do
    expect(cipher_sentence("Ceci est un test", 2)).to eq("Egek guv wp vguv")
  end
end

describe "caesar_cipher method" do
  it "should return the adequatly shifted sentence" do
    expect(cipher_sentence("Ceci est un Mega test FiNAL", 15)).to eq("Rtrx thi jc Btvp ithi UxCPA")
  end
end