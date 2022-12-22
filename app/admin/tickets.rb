# frozen_string_literal: true

ActiveAdmin.register Ticket do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :current_state, :current_release_milestone, :project_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :current_state, :current_release_milestone, :project_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    id_column
    column :title
    column :current_state
    column :description
    column :project do |tickets|
      table_for tickets.project do
        column :name
      end
    end
  end
end
