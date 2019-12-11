#   describe "#ftoc" do
#     it "converts freezing temperature" expect(ftoc(32)).to eq(0)
#     it "converts boiling temperature" expect(ftoc(212)).to eq(100)
#     it "converts body temperature" expect(ftoc(98.6)).to eq(37)
#     it "converts arbitrary temperature" expect(ftoc(68)).to eq(20)
def ftoc(num)
  (num - 32) * 5 / 9
end
p ftoc(32)
p ftoc(212)
p ftoc(98.6)
p ftoc(68)
# describe "#ctof" do
#     it "converts freezing temperature" expect(ctof(0)).to eq(32)
#     it "converts boiling temperature" expect(ctof(100)).to eq(212)
#     it "converts arbitrary temperature" do expect(ctof(20)).to eq(68)
#     it "converts body temperature" do expect(ctof(37)).to be_within(0.1).of(98.6)
#try "puts 0.5 - 0.4 - 0.1" -- pretty crazy, right?

def ctof(num)
    num * 9.0 / 5.0 + 32.0
end

p ctof(0)
p ctof(100)
p ctof(20)
p ctof(37)