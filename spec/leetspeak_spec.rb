require('rspec')
require('leetspeak')

describe('String#leetspeak') do
  it("returns a string as is when no Leetspeak rules apply") do
    expect("happy".leetspeak).to(eq("happy"))
  end

  it("replaces every e in a string with a 3") do
    expect("escape".leetspeak).to(eq("3zcap3"))
  end

  it("replaces every o in a string with a 0") do
    expect("hello".leetspeak).to(eq("h3ll0"))
  end

  it("replaces every capital I with a 1, but not lowercase i") do
    expect("Istanbul".leetspeak).to(eq("1ztanbul"))
  end

  it("replaces every s with a z") do
    expect("exercise".leetspeak).to(eq("3x3rciz3"))
  end

  it("does not replace an s if it's the first letter of a word") do
    expect("sausage".leetspeak).to(eq("sauzag3"))
  end

  it('replaces letters correctly in a string of words') do
  expect("I scream you scream we all scream for raspberry ice cream".leetspeak).to(eq("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am"))
  end
end
