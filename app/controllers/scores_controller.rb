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
    # 1位〜4位までの点数合計をチェック
    if check_total_score(score_params[:first_score].to_i, score_params[:second_score].to_i, score_params[:third_score].to_i, score_params[:fourth_score].to_i)
      @score = Score.create(score_params)
      redirect_to scores_path
    else
      flash.now[:danger] = 'スコアの合計点が100,000点になりません。確認してください。'
      @score = Score.new(score_params)
      @participants = Participant.all
      render 'new', status: :unprocessable_entity
    end
  end

  # 対戦記録編集
  def edit
    @score = Score.find(params[:id])
    @participants = Participant.all
  end

  def update
    @score = Score.find(params[:id])
    if check_total_score(score_params[:first_score].to_i, score_params[:second_score].to_i, score_params[:third_score].to_i, score_params[:fourth_score].to_i)
      @score.update(score_params)
      redirect_to scores_path
    else
      flash.now[:danger] = 'スコアの合計点が100,000点になりません。確認してください。'
      @score.attributes = score_params
      @participants = Participant.all
      render 'edit', status: :unprocessable_entity
    end
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
