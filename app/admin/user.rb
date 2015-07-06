
ActiveAdmin.register User do
  form do |f|
    f.inputs "Identity" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :requested_rights
      f.input :expertise
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  permit_params :first_name, :email, :admin, :last_name, :requested_rights, :expertise
end
