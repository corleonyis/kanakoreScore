class ScoresController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :show, :destory]
  
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
    update_participant_info(@score.first_participantID, @score.first_score, 1)     # 1位
    update_participant_info(@score.second_participantID, @score.second_score, 2)   # 2位
    update_participant_info(@score.third_participantID, @score.third_score, 3)     # 3位
    update_participant_info(@score.fourth_participantID, @score.fourth_score, 4)   # 4位

    redirect_to scores_path
  end

  # 対戦記録編集
  def edit
    @score = Score.find(params[:id])
    @participants = Participant.all
  end

  def update
    @score = Score.find(params[:id])

    # この対戦記録の点数を一旦なかったことにする
    revoke_game_point(@score.first_participantID, @score.first_score, 1)    # 1位
    revoke_game_point(@score.second_participantID, @score.second_score, 2)  # 2位
    revoke_game_point(@score.third_participantID, @score.third_score, 3)    # 3位
    revoke_game_point(@score.fourth_participantID, @score.fourth_score, 4)  # 4位

    @score.update(score_params)

    # 各参加者の合計スコアを更新する
    update_participant_info(@score.first_participantID, @score.first_score, 1)     # 1位
    update_participant_info(@score.second_participantID, @score.second_score, 2)   # 2位
    update_participant_info(@score.third_participantID, @score.third_score, 3)     # 3位
    update_participant_info(@score.fourth_participantID, @score.fourth_score, 4)   # 4位

    redirect_to scores_path
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
