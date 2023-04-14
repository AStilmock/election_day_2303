require 'rspec'
require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  before(:each) do
    @diana = Candidate.new({name: "Diana D", party: :democrat})
    @roberto = Candidate.new({name: "Roberto R", party: :republican})
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

  describe 'register_candidate! method' do
    it 'registers a candidate' do
      candidate1 = @race.register_candidate!(@diana)
      expect(candidate1.class).to eq(Candidate)
      expect(candidate1.name).to eq("Diana D")
      expect(candidate1.party).to eq(:democrat)
    end

    it 'registers another candidate' do
      candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})
      candidate2 = @race.register_candidate!({name: "Roberto R", party: :republican})
      expect(@race.candidates).to eq([candidate1, candidate2])
    end
  end
end