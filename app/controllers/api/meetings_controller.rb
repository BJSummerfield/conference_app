class Api::MeetingsController < ApplicationController
  def meeting
    @meeting = Meeting.first
    render 'meeting.json.jbuilder'
  end

  def all_meetings
    @all_meetings = Meeting.all
    render 'all_meetings.json.jbuilder'
  end
end

