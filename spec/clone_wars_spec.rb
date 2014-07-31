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
  it "saves a copy of each clone made" do
    Clone.clearClones
    test_clone = Clone.new({:name => 'Generic One'})
    expect(Clone.clones[-1].name).to eq "Generic One"
  end
  it "saves a copy of clones made in inherited methods" do
    Clone.clearClones
    brad1 = Brad.new({:name => 'Brad Zero'})
    expect(Clone.clones[-1].name).to eq "Brad Zero"
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
  expect(Brad.brads[1].friend).to eq nil
  end
end

describe 'Angelena' do
it "Creates an Angelena that inherits from the Clone class" do
  Angelena.clearAngelenas
  angelena1 = Angelena.new({:name => 'Angelena Zero'})
  expect(angelena1.health).to eq 10
  end
  it "save a copy of each angelena object to the class array" do
  Angelena.clearAngelenas
  angelena1 = Angelena.new({:name => 'Angelena Zero'})
  angelena2 = Angelena.new({:name => 'Angelena One'})
  expect(Angelena.angelenas[0].name).to eq "Angelena Zero"
  expect(Angelena.angelenas[1].name).to eq "Angelena One"
  end
end

describe 'Scarlet' do
it "Creates a Scarlet that inherits from the Clone class" do
  Scarlet.clearScarlets
  scarlet1 = Scarlet.new({:name => 'Scarlet Zero'})
  expect(scarlet1.health).to eq 10
  end
  it "save a copy of each scarlet object to the class array" do
  Scarlet.clearScarlets
  scarlet1 = Scarlet.new({:name => 'Scarlet Zero'})
  scarlet2 = Scarlet.new({:name => 'Scarlet One'})
  expect(Scarlet.scarlets[0].name).to eq "Scarlet Zero"
  expect(Scarlet.scarlets[1].name).to eq "Scarlet One"
  end
end

describe 'Bill' do
it "Creates a Bill that inherits from the Clone class" do
  Bill.clearBills
  bill1 = Bill.new({:name => 'Bill Zero'})
  expect(bill1.health).to eq 10
  end
  it "save a copy of each bill object to the class array" do
  Bill.clearBills
  bill0 = Bill.new({:name => 'Bill Zero'})
  bill1 = Bill.new({:name => 'Bill One'})
  expect(Bill.bills[0].name).to eq "Bill Zero"
  expect(Bill.bills[1].name).to eq "Bill One"
  end
end
