module ApplicationHelper
    def user_avatar(user, size=40)
        if user.avatar.attached?
            user.avatar.variant(resize: "#{size}x#{size}!")
        else
            gravatar_image_url(user.email, size: size)
        end
    end

    def flash_class(type)  
      case type
        when "alert"
          "is-warning"
        when "notice"
          "is-info"
        when "error"
          "is-danger"
        when "success"
          "is-success"
        else
          ""
        end
    end
end
