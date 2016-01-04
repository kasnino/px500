Rails.application.config.generators do |generate|
	generate.helper false
	generate.javascript_engine false
	generate.request_specs false
	generate.routing_specs false
	generate.stylesheets false
	generate.test_framework :minitest, spec: true, fixture: true
	generate.view_specs false
end
#Aqui le estoy diciendo a rails NO ne generes archivos vacios
# SI los llego a necesitar yo mismo los genero