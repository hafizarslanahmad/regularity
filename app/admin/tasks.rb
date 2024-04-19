ActiveAdmin.register Task do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :assignment, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:assignment, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :assignment, :user_id, :email

  index do
    selectable_column
    id_column
    column :assignment
    column :user_id
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
  filter :assignment
  filter :user_id
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :assignment
      f.input :user_id
      f.input :email
    end
    f.actions
  end

  
end
