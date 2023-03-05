module ParticipantsHelper

  # IDから参加者の名前を取得する
  def participant_name(id)
    participant = Participant.find(id)
    participant.name
  end

  # IDの参加者の対局情報を更新する
  def update_participant_info(id, score, rank)
    participant = Participant.find(id)

    # 対局回数を更新
    participant.total_games += 1

    # 各順位の回数を更新
    if rank == 1 then
      participant.first += 1
      bonus = 20
    elsif rank == 2 then
      participant.second += 1
      bonus = 10
    elsif rank == 3 then
      participant.third += 1
      bonus = 5
    else
      participant.fourth += 1
      bonus = 0
    end

    # 点数と順位からポイントを計算
    point = ((score - 25000).round(-3) / 1000) + bonus
    
    # ハンデ抜きのスコアを更新
    participant.game_point += point

    # ハンデ込みのスコアを更新
    participant.total_point = participant.game_point + participant.handicap

    participant.save
  end

  # 対象の参加者の獲得ポイントを取り消す
  def revoke_game_point(id, score, rank)
    participant = Participant.find(id)

    # 対局回数を更新
    participant.total_games -= 1

    # 各順位の回数を更新
    if rank == 1 then
      participant.first -= 1
      bonus = 20
    elsif rank == 2 then
      participant.second -= 1
      bonus = 10
    elsif rank == 3 then
      participant.third -= 1
      bonus = 5
    else
      participant.fourth -= 1
      bonus = 0
    end

    # 点数と順位からポイントを計算
    point = ((score - 25000).round(-3) / 1000) + bonus
    
    # ハンデ抜きのスコアを更新
    participant.game_point -= point

    # ハンデ込みのスコアを更新
    participant.total_point = participant.game_point + participant.handicap

    participant.save
  end

end
