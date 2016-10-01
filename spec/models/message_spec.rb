require 'rails_helper'

describe Message do
  it "doesn't save the message if twilio gives an error" do
    message = Message.new(:body => 'hi', :to => '123456', :from => '8562830298')
    message.save.should be false
  end
end
