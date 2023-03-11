module ParticipantsHelper
  def get_participant_name(id, participants)
    participants.find{|participant| participant.id == id}.name
  end
end
