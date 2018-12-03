RSpec.describe "As a user" do
  describe 'When I visit /comedians' do
    it 'displays a lit of comedians with name, age, and city.' do
      jim_jefferies = Comedian.create(name: 'Jim Jefferies', age: 41, city: 'Sydney, Australia')

      visit '/comedians'

      within '#comedian-0' do
        within '.comedian-name' do
          expect(page).to have_content(jim_jefferies.name)
        end
      end
    end
  end
end
