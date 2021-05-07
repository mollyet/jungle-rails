require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

  #SETUP
  
  before :each do 
    @category = Category.create! name: "Apparel"

    10.times do |n| 
      @category.products.create!(
        name: Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset("apparel1.jpg"),
        quantity: 10,
        price: 420.69
      )
    end
  end
  scenario "They see all products" do
    # ACT
    visit root_path
    #click on a product to visit page
    # click this button 'btn btn-default pull-right'
    # click_on "btn btn-default pull-right"
    first("a.btn-default").click
    expect(page).to have_content("Description")
    # DEBUG / VERIFY
    save_screenshot


  end

end
