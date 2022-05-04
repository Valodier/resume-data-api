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
  get  "/educations" => "educations#index"
  post "/educations" => "educations#create"
  get  "/educations/:id" => "educations#show"
  patch "/educations/:id" => "educations#update"
  delete "/educations/:id" => "educations#destroy"

  ###EXPERIENCE###
  get  "/experience" => "experience#index"
  post "/experience" => "experience#create"
  get  "/experience/:id" => "experience#show"
  patch "/experience/:id" => "experience#update"
  delete "/experience/:id" => "experience#destroy"

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
