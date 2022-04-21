# encoding: utf-8
module DocHelpers
  def page_title
    if data.page.title
      title = data.page.title + " — Eet.nu"
    else
      title = "Eet.nu"
    end
    
    title
  end
end
