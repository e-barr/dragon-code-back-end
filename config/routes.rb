Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users, :questions, :games, :game_questions

  resources :users, :levels, :grid_spaces, :event_pieces, :questions, only: [:show, :index]

  resources :game_questions, only: [:show, :index, :update]

  resources :games, only: [:create, :show, :index, :update]

end
