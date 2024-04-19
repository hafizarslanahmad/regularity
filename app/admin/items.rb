ActiveAdmin.register Item do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :commen, :task_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:commen, :task_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :comment, :task_id

  index do
    selectable_column
    id_column
    column :comment
    column :task_id
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
  filter :comment
  filter :task_id
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :comment
      f.input :task_id
    end
    f.actions
  end
  
end
