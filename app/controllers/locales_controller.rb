class LocalesController < ApplicationController

  respond_to :html

  def select
    @page_title = t(:select_locale, default: "Change your Locale")
    add_breadcrumb @page_title
    @title_tag = "#{AppSettings['settings.site_name']}: #{@page_title}"
  end

  def switch_locale
    I18n.locale = params[:to]
    redirect_to root_path
  end

  def redirect_on_locale
      redirect_to root_path, status: 301
  end

end
