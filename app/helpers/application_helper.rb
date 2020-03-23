module ApplicationHelper
  def nav_color
    controller_name == "lines" ? "bg-success" : "bg-danger"
  end
end
