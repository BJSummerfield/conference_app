Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/speaker" => "speaker#people"
    get "/meetings" => "meetings#meeting"
    get "/all_meetings" => "meetings#all_meetings"
    get "/query_params_meeting" => "meetings#query"
  end
end
