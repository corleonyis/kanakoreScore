class ApplicationController < ActionController::Base
  include ParticipantsHelper
  include ScoresHelper
  include GrandSlumsHelper
  include SessionsHelper
end
