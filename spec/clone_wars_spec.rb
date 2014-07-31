require 'rspec'
require 'pry'
require 'clone_wars'

describe 'Clone' do
  it "Instantiates a clone from the Clone class" do
    test_clone = Clone.new({:name => 'Generic One'})
    expect(test_clone).to be_an_instance_of Clone
  end
  it "allows attributes to be accessed" do
    test_clone = Clone.new({:name => 'Generic One'})
    expect(test_clone.health).to eq 10
    expect(test_clone.name).to eq "Generic One"
  end
end

describe 'Brad' do
it "Creates a Brad that inherits from the Clone class" do
  Brad.clearBrads
  brad1 = Brad.new({:name => 'Brad Zero'})
  expect(brad1.health).to eq 10
  end
  it "save a copy of each brad object to the class array" do
  Brad.clearBrads
  brad1 = Brad.new({:name => 'Brad Zero'})
  brad2 = Brad.new({:name => 'Brad One'})
  expect(Brad.brads[0].name).to eq "Brad Zero"
  expect(Brad.brads[1].name).to eq "Brad One"
  end
end

describe 'Angelena' do
it "Creates an Angelena that inherits from the Clone class" do
  Angelena.clearAngelenas
  angelena1 = Angelena.new({:name => 'Angelena Zero'})
  expect(angelena1.health).to eq 10
  end
  it "save a copy of each brad object to the class array" do
  Angelena.clearAngelenas
  angelena1 = Angelena.new({:name => 'Angelena Zero'})
  angelena2 = Angelena.new({:name => 'Angelena One'})
  expect(Angelena.angelenas[0].name).to eq "Angelena Zero"
  expect(Angelena.angelenas[1].name).to eq "Angelena One"
  end
end
