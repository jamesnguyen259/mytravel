RailsAdmin.config do |config|
  config.parent_controller = 'ApplicationController'
  
  config.included_models = %w[ User Address Place PlacePicture ]
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    
    dashboard do
      statistics false
    end

    index
    
    new

    bulk_delete
    
    show
    
    edit
    
    delete
    
    show_in_app do
      except ['PlacePicture']
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
    
    config.model User do
      list do
        fields :id, :email, :name, :is_admin, :created_at
      end
    end
    
    config.model Address do
      list do
        fields :id, :name
      end
    end
    
    config.model Place do
      list do
        fields :id, :place_name, :rate, :views_number, :user, :address, :created_at
      end
    end
  end
end
