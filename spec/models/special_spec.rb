RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    it ".average_runtime" do
      Special.create(name: 'test1', runtime: 60, comedian_id: 0, thumbnail: '')
      Special.create(name: 'test2', runtime: 40, comedian_id: 0, thumbnail: '')
      expect(Special.average_runtime).to eq(50)
    end
  end
end
