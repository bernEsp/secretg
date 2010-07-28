class Permissions < Aegis::Permissions

  role :mainuser
  role :subuser_projects
  role :subuser

  resources :projects do
    allow :mainuser
    action :create do
      allow :mainuser
      allow :subuser_projects
      deny :subuser
    end
  end

end
