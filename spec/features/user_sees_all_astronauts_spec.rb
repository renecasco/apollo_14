require "rails_helper"

describe 'when a user visits austronauts_index' do
  it "user_can_see_all_austronauts" do
    austronaut_1 = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")

    visit "/astronauts"
    save_and_open_page
    # binding.pry

    within "#astronaut-#{astronaut.id}" do
      expect(page).to have_content("Name: #{austronaut_1.name}")
      expect(page).to have_content("Age: #{austronaut_1.age}")
      expect(page).to have_content("Name: #{austronaut_1.job}")
    end
  end
end
