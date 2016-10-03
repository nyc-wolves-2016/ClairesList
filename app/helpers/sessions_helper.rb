module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||=User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def require_user
    redirect '/login' unless logged_in?
  end

  def log_out
    session.clear
  end
end
