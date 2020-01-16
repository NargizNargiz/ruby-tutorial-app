Rails.application.routes.draw do
	# метод рут направляет рут-путь к контроллеру и дейтсвию по нашему выбора 
	# в даннном случае к хоме	
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  # штука сверху создаст два именнованых маршрута - help_path and help_url
  # 
  # 
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
