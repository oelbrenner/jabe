class Admin::SettingsController < Admin::BaseController

  def update
    if SETTINGS.update_attributes(params[:settings])
      SETTINGS.do_updates
      redirect_to admin_root_path, :notice => 'Settings updated.'
    else
      render :edit
    end
  end
end
