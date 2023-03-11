class GrandSlumsController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :show, :destory]

  # 役満達成者一覧
  def index
    @grand_slums = GrandSlum.all
    @participants = Participant.all
  end

  # 役満達成者登録
  def new
    @grand_slum = GrandSlum.new
    @participants = Participant.all
  end

  def create
    @grand_slum = GrandSlum.create(grand_slum_params)
    redirect_to grand_slums_path
  end

  # 役満達成者編集
  def edit
    @grand_slum = GrandSlum.find(params[:id])
    @participants = Participant.all
  end

  def update
    @grand_slum = GrandSlum.find(params[:id])
    @grand_slum.update(grand_slum_params)
    redirect_to grand_slums_path
  end

  private
    def grand_slum_params
      params.require(:grand_slum).permit(:name, :participant_id, :date)
    end
end
