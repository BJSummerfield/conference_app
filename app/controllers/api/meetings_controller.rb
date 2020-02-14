class Api::MeetingsController < ApplicationController
 
  def index
    @meetings = Meeting.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @meetings = Meeting.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @meetings = Meeting.new(
      title: params[:title],
      agenda: params[:agenda],
      time: params[:time]
      )
    @meetings.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @meetings = Meeting.find_by(id: the_id)
    @meetings.update(
      title: params[:title] || @meetings.title,
      agenda: params[:agenda] || @meetings.agenda,
      time: params[:time] || @meetings.time
      )
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @meetings = Meeting.find_by(id: the_id)
    @meetings.destroy
    render 'destroy.json.jbuilder'
  end

end

