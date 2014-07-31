require 'rspec'
require 'pry'
require 'clone_wars'

describe 'Clone' do
  it "Instantiates a clone from the Clone class" do
    test_clone = Clone.new
    expect(test_clone).to be_an_instance_of Clone
  end
  it "allows attribute health to be accessed" do
    test_clone = Clone.new
    expect(test_clone.health).to eq 10
  end
end

describe 'Brad' do
it "Instantiates a BradPitt that inherits from the Clone class" do
  brad1 = Brad.new
  expect(brad1.health).to eq 10
  end
  it "save a copy of each brad object to the class array" do
  brad1 = Brad.new
  expect(brad1.brads[0].health).to eq 10
  end
end
