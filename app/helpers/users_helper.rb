module UsersHelper
  def format_admin(status)
    if status == true
      "admin"
    else
      "user"
    end
  end #format_admin(admin)

end
