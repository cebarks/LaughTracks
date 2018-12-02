RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end
  describe 'Class Methods' do
    it ".average_age" do
      Comedian.create(name: "test1", age: 60)
      Comedian.create(name: "test2", age: 40)

      expect(Comedian.average_age).to eq(50)
    end
    it ".unique_cities" do
      Comedian.create(name: "test1", age: 60, city: 'Denver')
      Comedian.create(name: "test2", age: 50, city: 'Denver')
      Comedian.create(name: "test2", age: 40, city: 'Pueblo')

      expect(Comedian.unique_cities).to eq(%w[Pueblo Denver])
    end
  end
end
