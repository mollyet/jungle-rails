require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

  #SETUP
  
  before :each do 
    @category = Category.create! name: "Apparel"
      @category.products.create!(
        name: Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset("apparel1.jpg"),
        quantity: 10,
        price: 420.69
      )
  end
  scenario "They can add one thing to the cart" do
    # ACT
    visit root_path
    #check if cart is empty
    expect(page).to have_content("My Cart (0)")
    #click button to add to cart (add or btn btn-primary)
    # click_button("Add").first
    # first("a.btn-primary").click
    click_button "Add"
  # find_button("Add").click
    #check if there is something in the cart
   expect(page).to have_content("My Cart (1)")
    # DEBUG / VERIFY
    save_screenshot


  end

end
