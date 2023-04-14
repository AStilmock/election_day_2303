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

  describe 'add_race(race) method' do
    it 'adds a race to the election' do
      @election1.add_race(@race)
      expect(@election1.races).to eq([@race])
    end

    it 'checks election data' do
      @election1.add_race(@race)
      expect(@election1.candidates(@election1)).to eq([@candidate1, @candidate2])
    end
  end

  describe 'vote_counts method' do
    it 'checks votes' do
      @election1.add_race(@race)
      require 'pry'; binding.pry
      expect(@election1.vote_counts(@election1)).to eq({"Diana D" => 0, "Roberto R" => 0})
    end
  end
end