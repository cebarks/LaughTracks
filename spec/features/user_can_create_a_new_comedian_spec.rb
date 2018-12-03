RSpec.describe 'As a user' do
  describe 'When I visit /comedians/new' do
    describe 'and hit submit with filled in values' do
      it 'adds the new comedian to the database.' do
        visit '/comedians/new'

        fill_in 'comedian[name]', with: 'test1'
        fill_in 'comedian[age]', with: 5
        fill_in 'comedian[city]', with: 'Denver'

        click_button 'Submit'

        save_and_open_page

        expect(page).to have_content('test1')
        expect(page).to have_content('Denver')
      end
    end
  end
end
