Rails.application.routes.draw do
  # get 'episodes/index'

  # get 'episodes/show'

  # get 'episodes/new'

  # get 'episodes/edit'

  # get 'seasons/index'

  # get 'seasons/show'

  # get 'seasons/new'

  # get 'seasons/edit'

  # get 'shows/index'

  # get 'shows/show'

  # get 'shows/new'

  # get 'shows/edit'

  resources :shows 
  resources :seasons 
  resources :episodes


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
