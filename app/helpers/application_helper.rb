module ApplicationHelper
  def page_title
    title = "Morning Glory"
    title = @page_title + " - " + title if @page_title
    title
  end

  def menu_link_to(text, path)
    #現在のページの場合はリンクにせずに、spanタグでテキストを囲う
    link_to_unless_current(text,path){content_tag(:span, text)}
  end
end
