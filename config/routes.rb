Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :questions, :games, :game_questions

=begin
  resources :users, :level, :grid_space, :event_piece, :question, only: [:show, :index]

  resources :game_question, only: [:show, :index, ]
=end
end
