ActiveAdmin.register Shop do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :category_id, :owner_id, :name, :postcode, :address, :station, :phone, :holiday, :budget, :seat, :explain, :hplink, :booking, :open_time, :close_time
  #
  # or
  #
  # permit_params do
  #   permitted = [:category_id, :owner_id, :name, :postcode, :address, :station, :phone, :holiday, :budget, :seat, :explain, :hplink, :booking, :open_time, :close_time]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
