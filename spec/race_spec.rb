require 'rspec'
require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  before(:each) do
    @diana = Candidate.new({name: "Diana D", party: :democrat})
    @race = Race.new("Texas Governor")
  end


  describe 'initialize' do
    it 'exists' do
      expect(@race).to be_an_instance_of(Race)
    end

    it 'race has attributes' do
      expect(@race.office).to eq("Texas Governor")
      expect(@race.candidates).to eq([])
    end
  end
end