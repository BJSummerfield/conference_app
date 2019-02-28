class Api::MeetingsController < ApplicationController
  def meeting
    @meeting = Meeting.first
    render 'meeting.json.jbuilder'
  end

  def all_meetings
    @all_meetings = Meeting.all
    render 'all_meetings.json.jbuilder'
  end

  def query
   @id = params[:id]
   @id = Meeting.find_by id (33)
    render 'query_action.json.jbuilder'
  end
end

