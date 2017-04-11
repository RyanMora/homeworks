require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:pie) {Dessert.new('pie', 50, chef)}
  let(:chef) { double("chef", name: "Ryan") }

  describe "#initialize" do
    it "sets a type" do
      expect(pie.type).to eq('pie')
    end

    it "sets a quantity" do
      expect(pie.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(pie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new('pie', "50", "Ryan")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      pie.add_ingredient('chocolate')
      expect(pie.ingredients).to include('chocolate')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      pie.add_ingredient('chocolate')
      pie.add_ingredient('banana')
      pie.add_ingredient('strawberry')
      expect(pie.ingredients).to eq(['chocolate', 'banana', 'strawberry'])
      pie.mix!
      expect(pie.ingredients).to_not eq(['chocolate', 'banana', 'strawberry'])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      pie.eat(25)
      expect(pie.quantity).to eq(25)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{ pie.eat(55) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Ryan the Great Baker")
      expect(pie.serve).to eq('Chef Ryan the Great Baker has made 50 pies!')
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(pie)
      pie.make_more
    end
  end
end
