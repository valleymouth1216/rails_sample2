Rails.application.routes.draw do
  get 'lists/new'
  post "lists"=>"lists#create" #←これがないとget 'lists/new'があっても表示できない
  get 'top'=>"homes#top"
  get 'lists'=>"lists#index"
  get "lists/:id" => "lists#show",as:"list"
  get 'lists/:id/edit' => "lists#edit",as:"edit_list"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
