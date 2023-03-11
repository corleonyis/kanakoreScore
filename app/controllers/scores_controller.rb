class ScoresController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :show, :destory]
  
  # 対戦記録一覧
  def index
    @scores = Score.all
    @participants = Participant.all

    @games = []
    @scores.each do |score|
      @games.push(Game.new(score, @participants))
    end
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
    @score = Score.find(params[:id])
    @participants = Participant.all
  end

  def update
    @score = Score.find(params[:id])

    @score.update(score_params)


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
