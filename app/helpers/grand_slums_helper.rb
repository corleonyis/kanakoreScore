module GrandSlumsHelper

  # 役満達成回数の取得
  def get_number_grand_slum(id)
    @number = GrandSlum.where(participant_id: id).count
  end
end
