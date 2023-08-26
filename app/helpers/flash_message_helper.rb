module FlashMessageHelper
  def bulma_class_for(status)
    case status
    when "success" then "has-background-link"
    when "error" then "has-background-danger"
    when "warning" then "has-background-warning-dark"
    end
  end
end
