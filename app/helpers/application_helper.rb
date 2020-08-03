module ApplicationHelper

  def sortable(column, title = nil)
    title ||= column.titleize
    sort_column = params[:sort] ? params[:sort] : "updated_at"
    sort_direction = params[:direction] ? params[:direction] : "desc"
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    icon = sort_direction == "asc" ? "fa fa-angle-up" : "fa fa-angle-down"
    icon = column == sort_column ? icon : ""
    url_hash = {:sort => column, :direction => direction}
    url_hash[:search] = params[:search].as_json if params[:search]
    link_to "#{title} <span class='#{icon}'></span>".html_safe, url_hash
  end
end
