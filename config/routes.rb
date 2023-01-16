Rails.application.routes.draw do
  resources :companies
  resources :job_reports
  resources :people
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
