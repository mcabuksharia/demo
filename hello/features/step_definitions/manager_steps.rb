class CucumberManager
def reply
"25k/m"
end
end

Given(/^A interviewee$/) do
@manager = CucumberManager.new
end
When(/^Manager ask what is current ctc$/) do
@msg=@manager.reply
end
Then(/^Interviewee should say "([^"]*)"$/) do |arg1|
@msg.should == arg1
end