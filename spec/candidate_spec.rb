require 'rspec'
require './lib/candidate'

RSpec.describe Candidate do
  before(:each) do
    @diana = Candidate.new({name: "Diana D", party: :democrat})
  end

  describe 'initialize' do
    it 'exists' do
      expect(@diana).to be_an_instance_of(Candidate)
    end

    it 'candidate has attributes' do
      expect(@diana.name).to eq("Diana D")
      expect(@diana.party).to eq(:democrat)
      expect(@diana.votes).to eq(0)
    end
  end
end
