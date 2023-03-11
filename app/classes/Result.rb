class Result
  include ScoresHelper
  attr_reader :id, :name, :handicap,
              :cumulative_rank_point, :cumulative_game_point,
              :number_of_times_first, :number_of_times_second, :number_of_times_third, :number_of_times_fourth, :number_of_times_played

  def initialize(participant)
    @id = participant.id
    @name = participant.name
    @handicap = participant.handicap
    @cumulative_game_point = 0
    @cumulative_rank_point = 0
    @number_of_times_played = 0
    @number_of_times_first = 0
    @number_of_times_second = 0
    @number_of_times_third = 0
    @number_of_times_fourth = 0
  end

  # setter
  def update_point(rank, score)
    case rank
      when 1 then
        rank_point = 20
        @number_of_times_first += 1
      when 2 then
        rank_point = 10
        @number_of_times_second += 1
      when 3 then
        rank_point = 5
        @number_of_times_third += 1
      else
        rank_point = 0
        @number_of_times_fourth += 1
    end

    game_point = get_game_point(score)

    @cumulative_rank_point += rank_point
    @cumulative_game_point += game_point
    @number_of_times_played += 1
  end

  # getter
  def cumulative_total_point
    @cumulative_rank_point + @cumulative_game_point + @handicap
  end

end