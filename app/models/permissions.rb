class Permissions < Aegis::Permissions

  role :mainuser
  role :subuser_projects
  role :subuser

  resources :projects do
    action :new, :create do
      allow :mainuser
      allow :subuser_projects
      deny :subuser
    end
    action :show do
      allow :mainuser
      allow :subuser_projects
      deny :subuser
    end
    action :destroy do
      allow :mainuser
      deny :subuser_projects
      deny :subuser
    end
    action :edit, :update do
      allow :mainuser
      allow :subuser_projects
      deny :subuser
    end
  end

  resources :users do
    action :new, :create, :edit, :show,:destroy, :update do
      allow :mainuser
      deny :subuser_projects
      deny :subuser
    end
  end

end
