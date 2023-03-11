class ResultsController < ApplicationController
  require './app/classes/Result'

  # 集計結果表示
  def index
    participants = Participant.all

    @results = []

    # 集計結果作成
    participants.each do |participant|
      result = Result.new(participant)

      # 個人のスコアを集計
      get_scores(participant.id).each do |s|
        if participant.id == s.first_participantID then
          rank = 1
          score = s.first_score
        elsif participant.id == s.second_participantID then
          rank = 2
          score = s.second_score
        elsif participant.id == s.third_participantID then
          rank = 3
          score = s.third_score
        else
          rank = 4
          score = s.fourth_score
        end
        result.update_point(rank, score)
      end

      # 対戦回数０回は除外
      if result.number_of_times_played != 0 then
        @results.push(result)
      end
    end
    
    # 合計ポイントの高い順にソート
    @results.sort! do |x, y|
      y.cumulative_total_point <=> x.cumulative_total_point
    end
  end

  # 個人戦績表示
  def show
    @participants = Participant.all
    @name = get_participant_name(params[:id].to_i, @participants)

    # 対戦記録
    @games = []
    @scores = get_scores(params[:id])
    @scores.each do |score|
      @games.push(Game.new(score, @participants))
    end

    # 役満達成記録
    @grand_slums = GrandSlum.where(participant_id: params[:id])

  end
end
