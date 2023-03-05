module ScoresHelper
  # 個人の対局データを取得する
  def get_scores(id)
    @scores = Score.where(first_participantID: id).or(Score.where(second_participantID: id))
                                                  .or(Score.where(third_participantID: id))
                                                  .or(Score.where(fourth_participantID: id))
  end
end
