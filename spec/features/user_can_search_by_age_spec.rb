RSpec.describe 'As a user' do
  describe 'When I visit /comedians?age={age}' do
    it "only displays comedians with specified age" do
      Comedian.create(name: 'test1', age: 34, city: 'all')
      Comedian.create(name: 'test2', age: 43, city: 'two')
      Comedian.create(name: 'test3', age: 33, city: 'mem')

      visit '/comedians?age=33'

      expect(page).to have_content('test3')
      expect(page).to_not have_content('test1')
      expect(page).to_not have_content('test2')
    end
  end
end
