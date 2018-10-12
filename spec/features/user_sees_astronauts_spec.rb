require 'rails_helper'

describe 'astronaut index' do
  it 'user can see astronauts' do
    astronaut_1 = Astronaut.create(name: "Astronaut 1", age: 43, job: "Engineer")
    astronaut_2 = Astronaut.create(name: "Astronaut 2", age: 54, job: "Engineer")
    mission = astronaut_1.missions.create(title: "Secret", time_in_space: 1600)

    visit '/astronauts'

    expect(page).to have_content("Name: #{astronaut_1.name}")
    expect(page).to have_content("Name: #{astronaut_2.name}")
    expect(page).to have_content("Age: #{astronaut_1.age}")
    expect(page).to have_content("Age: #{astronaut_2.age}")
    expect(page).to have_content("Job: #{astronaut_1.job}")
    expect(page).to have_content("Job: #{astronaut_2.job}")
  end

  it 'user can see astronauts' do
    astronaut_1 = Astronaut.create(name: "Astronaut 1", age: 43, job: "Engineer")
    astronaut_2 = Astronaut.create(name: "Astronaut 2", age: 54, job: "Engineer")
    mission = astronaut_1.missions.create(title: "Secret", time_in_space: 1600)

    visit '/astronauts'

    expect(page).to have_content("average_age: #{Astronaut.average_age}")
  end
end
