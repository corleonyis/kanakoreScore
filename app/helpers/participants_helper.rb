module ParticipantsHelper
  def participant_name(id)
    participant = Participant.find(id)
    participant.name
  end
end
