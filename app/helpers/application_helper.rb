module ApplicationHelper
  def signed_in_only
    controller.redirect_to new_user_session_path unless user_signed_in?
   end
   
  def written_by(post)
    if user_signed_in?
      written= "Written by: "+post.author
    end
  end
end
