class SthgController < ApplicationController
  before_action :set_lang

  def home
  	puts "page2_path: #{page2_path}"
  	puts "page2_path: #{page2_path(lang: @lang)}"
  	puts "url_for: #{url_for :page2}"

  	# redirect from /fr/ to "/en/page2"
  	#redirect_to :page2
  	redirect_to :page2, lang: @lang
  	#redirect_to controller: controller_path, action: :page2, lang: @lang
  end

  def page2
  	render :page2
  end

  private

  def set_lang
  	@lang = params[:lang]
  end

end
