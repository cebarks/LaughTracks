RSpec.describe 'As a user' do
  describe 'When I visit /comedians' do
    it 'displays a statistics section with average age and runtime, and a list of unique cities' do
      Comedian.create(name: "test1", age: 60, city: 'Denver')
      Comedian.create(name: "test2", age: 50, city: 'Denver')
      Comedian.create(name: "test2", age: 40, city: 'Pueblo')
      Special.create(name: 'test1', runtime: 60, comedian_id: 0, thumbnail: '')
      Special.create(name: 'test2', runtime: 40, comedian_id: 0, thumbnail: '')
      
      visit '/comedians'

      within '#statistics' do
        expect(page).to have_content(Comedian.average_age)
        expect(page).to have_content(Comedian.unique_cities.join("; "))
        expect(page).to have_content(Special.average_runtime)
        expect(page).to have_content("Special Count: #{Special.all.length}")
      end
    end
  end
end
