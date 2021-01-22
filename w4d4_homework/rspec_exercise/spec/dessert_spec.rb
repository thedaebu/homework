require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:cake) { Dessert.new("cake", 10, "chef")}

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(10)
    end
  
    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("yum-yum", "yummers", "Chef Yummies")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(cake.ingredients).to be_empty
      cake.add_ingredient("love")
      expect(cake.ingredients).to include("love")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      jeryo = ["sugar", "spice", "everything nice", "chemical X"]

      jeryo.each {|ingredient| cake.add_ingredient(ingredient)}
      expect(cake.ingredients).to eq(jeryo)
      cake.mix!
      expect(cake.ingredients).not_to eq(jeryo)

    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cake.eat(5)
      expect(cake.quantity).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{cake.eat(15)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(cake.serve).to eq("Chef has made 10 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cake)
      cake.make_more
      # chef.bake(cake)
    end
  end
end
