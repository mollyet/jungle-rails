require 'rails_helper'
puts "tests!"
RSpec.describe Product, type: :model do
  describe "Validations" do
      it "it works" do
      # base test for making sure its valid
      @category = Category.new
      params = {
        name: "Surfboard",
        description: "A nice holograpic surfboard, perfect for catching waves in the ocean and on the internets",
        quantity: 2,
        category: @category,
        price: 50000
      }
      expect(Product.new(params)).to be_valid
    end
    it "validates if a name is present" do
      @category = Category.new
      params = {
        name: nil,
        description: "A nice holograpic surfboard, perfect for catching waves in the ocean and on the internets",
        quantity: 2,
        category: @category,
        price: 50000
      }
      @surfboard = Product.new(params)
      expect{ raise StandardError, "Name can't be blank"}.to raise_error(/blank/)
      
    end
    it "validates if it has a price" do
      @category = Category.new
      params = {
        name: "surfborard",
        description: "A nice holograpic surfboard, perfect for catching waves in the ocean and on the internets",
        quantity: 2,
        category: @category,
        price: nil
      }
      @surfboard = Product.new(params)
      expect{ raise StandardError, "Price is not a number"}.to raise_error("Price is not a number")
   
    end
    it "validates if it has a quantity" do 

      @category = Category.new
      params = {
        name: "surfborard",
        description: "A nice holograpic surfboard, perfect for catching waves in the ocean and on the internets",
        quantity: nil,
        category: @category,
        price: 500000
      }
      @surfboard = Product.new(params)
      expect{ raise StandardError, "Quantity can't be blank"}.to raise_error(/blank/)
      
    end
    it "validates if it has a category" do
      @category = Category.new
      params = {
        name: "surfborard",
        description: "A nice holograpic surfboard, perfect for catching waves in the ocean and on the internets",
        quantity: nil,
        category: nil,
        price: 500000
      }
      @surfboard = Product.new(params)
      expect{ raise StandardError, "Category can't be blank"}.to raise_error(/blank/)
      end
    end
end
