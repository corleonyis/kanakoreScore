class ResultsController < ApplicationController
  # 集計結果表示
  def index
    @participants = Participant.all.order(total_point: "DESC")
  end
end
