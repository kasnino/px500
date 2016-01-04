environment ENV['RACK_ENV']
threads 0,5

workers 3
preload_app!

on_worker_boot do
 ActiveSupport.on_load(:active_record) do
 ActiveRecord::Base.establish_conection
end
end

#Servidor Puma especificaciones tambien puedo usar unicord