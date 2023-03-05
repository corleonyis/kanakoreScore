class ScoresController < ApplicationController
  # TODO: 管理者のみアクセスできるようにbefore_actionを設定する
  
  # 対戦記録一覧
  def index
    @scores = Score.all
  end

  # 対戦記録追加
  def new
    @score = Score.new
    @participants = Participant.all
  end

  def create
    @score = Score.create(score_params)

    # 各参加者の合計スコアを更新する
    update_participantInfo(@score.first_participantID, @score.first_score, 1)     # 1位
    update_participantInfo(@score.second_participantID, @score.second_score, 2)   # 2位
    update_participantInfo(@score.third_participantID, @score.third_score, 3)     # 3位
    update_participantInfo(@score.fourth_participantID, @score.fourth_score, 4)   # 4位

    redirect_to scores_path
  end

  # 対戦記録編集
  def edit
  end

  def update
  end

  # 削除
  def destroy
  end

  private
    def score_params
      params.require(:score).permit(:date, 
        :first_participantID, :first_score,
        :second_participantID, :second_score,
        :third_participantID, :third_score,
        :fourth_participantID, :fourth_score)
    end
end
