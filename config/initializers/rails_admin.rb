RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except ['Admin']
    end
    export
    bulk_delete
    show
    edit do
      except ['Admin']
    end
    delete do
      except ['Admin']
    end
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Level' do
    list do
      field :cover
      field :title
      field :quizzes
      field :created_at
      field :updated_at
    end

    show do
      field :cover
      field :title
      field :description do
        formatted_value do
          value.html_safe
        end
      end
      field :quizzes
    end
    edit do
      field :cover
      field :title
      field :description, :ck_editor
      field :quizzes
    end
  end

  config.model 'Quiz' do
    list do
      field :cover
      field :answer
      field :level
      field :point
      field :created_at
      field :updated_at
    end

    show do
      field :cover
      field :hint do
        formatted_value do
          value.html_safe
        end
      end
      field :answer
      field :level
      field :point
    end

    edit do
      field :cover
      field :hint, :ck_editor
      field :answer
      field :level
      field :point
    end
  end
end
