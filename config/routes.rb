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
  get  "/educations" => "education#index"
  post "/educations" => "education#create"
  get  "/educations/:id" => "education#show"
  patch "/educations/:id" => "education#update"
  delete "/educations/:id" => "education#destroy"

  ###EXPERIENCE###
  get  "/experiences" => "experiences#index"
  post "/experiences" => "experiences#create"
  get  "/experiences/:id" => "experiences#show"
  patch "/experiences/:id" => "experiences#update"
  delete "/experiences/:id" => "experiences#destroy"

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
