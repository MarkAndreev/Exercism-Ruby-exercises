class HighScores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    sort_scores
    @scores.first
  end

  def personal_best
    sort_scores
    @scores.last
  end

  def personal_top_three
    sort_scores
    @scores.reverse!
    @scores[0..2]
  end

  private
  def sort_scores
    @scores.sort!
    @scores.delete(0)
  end
end
