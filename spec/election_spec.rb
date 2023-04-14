require 'rspec'
require './lib/candidate'
require './lib/race'
require './lib/election'

RSpec.describe Election do
  before(:each) do
    @election1 = Election.new("2023")
    @diana = Candidate.new({name: "Diana D", party: :democrat})
    @roberto = Candidate.new({name: "Roberto R", party: :republican})
    @race = Race.new("Texas Governor")
    @candidate1 = @race.register_candidate!(@diana)
    @candidate2 = @race.register_candidate!(@roberto)
  end

  describe 'initialize' do
    it 'exists' do
      expect(@election1).to be_an_instance_of(Election)
    end

    it 'has election attributes' do
      expect(@election1.year).to eq("2023")
      expect(@election1.races).to eq([])
    end
  end
end