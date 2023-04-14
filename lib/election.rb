class Election

  attr_reader :year,
              :races
  def initialize(year)
    @year = year
    @races = []
  end
  
  def add_race(race)
    @races << race
  end

  def candidates(election)
    election.races[0].candidates
  end

  def vote_counts(election)
    cand_info = candidates(election).each do |candidate|
      vote_counts = Hash.new({candidate.name => candidate.votes})
    end
  end
end

