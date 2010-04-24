class VoiceCall < ActiveRecord::Base

  belongs_to :user

  after_create :dial

  def dial
    call_url = 'http://api.tropo.com/1.0/sessions?action=create&token=' + OUTBOUND_VOICE_TEMP + '&to=' + to + '&from=' + user.phone_numbers.first.number
                # TODO probably change into a primary number, mostly likely a pstn number


    open(call_url) do |r|
      p r
    end
  end
end
