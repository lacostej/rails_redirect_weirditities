Rails.application.routes.draw do
  [ :en, :fr ].each do |lang|
    controller = 'sthg'

    use_defaults = false

    if use_defaults then
	    scope(lang, defaults: {lang: lang}) do
	      get '/', to: "#{controller}#home"
	      get '/page2', to: "#{controller}#page2"
	    end  
	else
	    scope(lang) do
	      get '/', to: "#{controller}#home", lang: lang
	      get '/page2', to: "#{controller}#page2", lang: lang
	    end
	end
  end
end
