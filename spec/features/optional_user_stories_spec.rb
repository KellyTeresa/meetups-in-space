require 'spec_helper'
# Optional user stories

feature "user checks who has joined the meetup", %(
  As a user
  I want to see who has already joined a meetup
  So that I can see if any of my friends have joined

  Acceptance Criteria:
  [X] On the details page for a meetup, I should see a list of the members that have already joined.
  [X] I should see each member's avatar.
  [X] I should see each member's username.
  ) do

  pending

end




feature "user leaves a meetup", %(
  As a user
  I want to leave a meetup
  So that I'm no longer listed as a member of the meetup

  Acceptance Criteria:
  [X] I must be authenticated.
  [X] I must have already joined the meetup.
  [X] I see a message that lets me know I left the meetup successfully.
  ) do

  pending

end


feature "user leaves comments", %(
  As a user
  I want to leave comments on a meetup
  So that I can communicate with other members of the group

  Acceptance Criteria:
  [ ] I must be authenticated.
  [ ] I must have already joined the meetup.
  [ ] I can optionally provide a title for my comment.
  [ ] I must provide the body of my comment.
  [ ] I should see my comment listed on the meetup show page.
  [ ] Comments should be listed most recent first.
  ) do

  pending

end
