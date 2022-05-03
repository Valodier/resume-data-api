Rails.application.routes.draw do
  
  ###STUDENTS###
  get  "/students" => "students#index"
  post "/students" => "students#create"
  get  "/students/:id" => "students#show"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  ###CAPSTONES###
  get  "/capstones" => "capstones#index"
  post "/capstones" => "capstones#create"
  get  "/capstones/:id" => "capstones#show"
  patch "/capstones/:id" => "capstones#update"
  delete "/capstones/:id" => "capstones#destroy"

  ###EDUCATION###
  get  "/education" => "education#index"
  post "/education" => "education#create"
  get  "/education/:id" => "education#show"
  patch "/education/:id" => "education#update"
  delete "/education/:id" => "education#destroy"

  ###EXPERIENCE###
  get  "/experience" => "experiences#index"
  post "/experience" => "experiences#create"
  get  "/experience/:id" => "experiences#show"
  patch "/experience/:id" => "experiences#update"
  delete "/experience/:id" => "experiences#destroy"

  ###SKILLS###
  get  "/skills" => "skills#index"
  post "/skills" => "skills#create"
  get  "/skills/:id" => "skills#show"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"
  
  ##SESSIONS/USERS###
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
