ActiveAdmin.register User do
  before_filter :configure_permitted_parameters, if: :devise_controller?
  permit_params :name,:displayname,:urole, :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :displayname
    column :urole

    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :displayname
      f.input :urole
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  def configure_permitted_parameters
    # Fields for sign up
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name ,:displayname,:urole) }
    # Fields for editing an existing account
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name ,:displayname,:urole) }
  end
end
