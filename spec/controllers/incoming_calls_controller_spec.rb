require 'spec_helper'

describe IncomingCallsController do

  describe "#user_menu" do

    context "when callee hangs up without selecting a valid dtmf" do
      before do
        post :user_menu, {:result => {}}
      end

      it "should succeed" do
        response.should be_success
      end

      it "should signal caller to hangup" do
        pending
      end
    end
  end

end

# To be used for the pending test above
#Parameters: {"result"=>{"sequence"=>1,
#                        "callId"=>"117dd015240dc8b63f765dc54828412a",
#                        "complete"=>true,
#                        "sessionId"=>"fa16e4041b53966deb43370fa80c5748",
#                        "error"=>nil, "sessionDuration"=>33, "state"=>"DISCONNECTED"},
#             "conf_id"=>"6<--->016508983130",
#             "session_id"=>"cd03935345e3ba5f82e66c641fc85c8f",
#             "user_id"=>"6", "call_id"=>"356a9f1df4e38319cb8f596c789c41f0", "caller_id"=>"016508983130"}
#
#
#"/incoming_calls/user_menu?conf_id=6%3C---%3E016508983130&user_id=6&caller_id=016508983130&session_id=cd03935345e3ba5f82e66c641fc85c8f&call_id=356a9f1df4e38319cb8f596c789c41f0"