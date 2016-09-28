Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    get 'welcome/index'
    resources :contacts, only: [:new, :create]
    get 'contact/new'
    resources :items
    root 'welcome#index'
    get "/welcome/:page" => "welcome#show"
  end
  get '*path', to: redirect("/#{I18n.default_locale}/%(path)")
  get '', to: redirect("/#{I18n.default_locale}/")
  
end
