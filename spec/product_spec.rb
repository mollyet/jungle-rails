require 'rails_helper'
puts "tests!"
RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "Validaions" do
      #validation tests here
      it "it works" do
      # base test for making sure its valid
      # @product = Product.new
      # @furniture = Category.new
      # @furniture.name = "furniture"
      # @product.name = "Green Velvet Couch"
      # @product.price = 50000
      # @product.quantity = 10
      # @product.category = @category
      # expect(@product.valid?).to be true
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
      it "has a name" do
        #tests for name
      end
      it "has a price" do
        #tests for price
      end
      it "has quantity" do 
        #tests for quantity
      end
      it "has a category" do
        #test for category
      end
      
    end
end
