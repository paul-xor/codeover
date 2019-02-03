Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/", to: "home#index", as: :root)

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resource :quizzes do
    resources :questions
  end

  resource :questions do
    resources :answers
  end
end
