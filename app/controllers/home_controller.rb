class HomeController < ApplicationController
  def home
    render :layout => false
  end

  def index
  end

  def permission
  end

  def change_style
    user = User.find(current_user.id)

    if user.style == "1"
      user.style = "2"
    else
      user.style = "1"
    end
    user.save
    respond_to do |format|
      format.html { redirect_to authenticated_root_path, notice: 'Estilo cambiado.' }
      format.json { head :no_content }
    end
  end

  def change_perm
    user = User.find(params[:user_id])
    user.role = params[:permission]
    user.save
    respond_to do |format|
      format.html { redirect_to authenticated_root_path, notice: 'Permisos Actualizados.' }
      format.json { head :no_content }
    end
  end
end
