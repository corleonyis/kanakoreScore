class Game
  include ScoresHelper
  include ParticipantsHelper
  attr_reader :id, :date,
              :first_name, :first_score, :first_point,
              :second_name, :second_score, :second_point,
              :third_name, :third_score, :third_point,
              :fourth_name, :fourth_score, :fourth_point

  # 初期化処理
  def initialize(score, participants)
    @id = score.id
    @date = score.date
    @first_name = get_participant_name(score.first_participantID, participants)
    @second_name = get_participant_name(score.second_participantID, participants)
    @third_name = get_participant_name(score.third_participantID, participants)
    @fourth_name = get_participant_name(score.fourth_participantID, participants)

    @first_score = score.first_score
    @second_score = score.second_score
    @third_score = score.third_score
    @fourth_score = score.fourth_score

    @first_point = get_game_point(@first_score) + 20
    @second_point = get_game_point(@second_score) + 10
    @third_point = get_game_point(@third_score) + 5
    @fourth_point = get_game_point(@fourth_score) + 0
  end

end