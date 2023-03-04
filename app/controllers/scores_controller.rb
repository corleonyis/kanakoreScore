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
