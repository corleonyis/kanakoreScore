class ResultsController < ApplicationController
  # 集計結果表示
  def index
    @participants = Participant.all.order(total_point: "DESC")
  end

  # 個人戦績表示
  def show
    @participant = Participant.find(params[:id])
    @scores = get_scores(params[:id])
  end
end
