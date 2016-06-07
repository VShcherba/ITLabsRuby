module Checkboxes

  def open_checkboxes_directory
    @b.link(text:'Checkboxes').click
  end
  def mark_checkbox
    @b.div(class:'example').checkbox(xpath:'//div//input[1]').set
  end
  def unmark_checkbox
    @b.div(class:'example').checkbox(xpath:'//div//input[2]').clear
  end
end
