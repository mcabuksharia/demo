Feature: Manager ask current ctc
In order to get job
You have to tell your current ctc
And expected ctc
Scenario: Manager ask current ctc
Given A interviewee
When Manager ask what is current ctc
Then Interviewee should say "25k/m"