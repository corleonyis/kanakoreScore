class ParticipantsController < ApplicationController
  # TODO:管理者のみアクセスできるようにbefore_actionを設定する

  # 参加者の一覧
  def index
    @participants = Participant.all
  end

  # 参加者の追加
  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.create(participant_params)
    redirect_to participants_path
  end

  # 参加者の登録内容変更
  def edit
    @participant = Participant.find(params[:id])
  end

  def update
    @participant = Participant.find(params[:id])

    # ハンデは最終的な得点に影響するので、再計算
    @participant.total_point = @participant.game_point + @participant.handicap
    @participant.update(participant_params)
    redirect_to participants_path
  end

  # 参加者を削除
  def destroy
  end

  private
    def participant_params
      params.require(:participant).permit(:name, :handicap, :isMember, :total_point)
    end
end
