class Api::SpeakerController < ApplicationController
  def people
    @speaker = Speaker.find(5)
    render 'people.json.jbuilder'
  end
end
