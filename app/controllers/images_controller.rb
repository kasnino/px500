class ImagesController < ApplicationController
	
	def index
		@images = Image.all
	end

	def new

		@image = Image.new

	end

	def create

		@image = Image.new secure_params
 
		if @image.save
		  return redirect_to images_path, notice: t('.created', model: @image.class.model_name.human)
        end
  
      render :new
  end

	private
	def secure_params

		params.require(:image).permit :name, :description, :category, :tagss, :photo
	end
end
 #Estoy trabajando en este proyecto que tiene relacion directa con la pagina 500px de echo es una mini version
 #explicare paso a paso detalladamente lo que he aprendeido de los cap. en platzi
 #primero empezamos corriendo una applicacion basica de ruby on rails sin mayor problema
 #algo que no habia echo era cambiar el servido que trae por defecto la app
 # est este caso lo cambiamos a puma aun no se muy bien los beneficios pero tengo entendido que nos
 #brinda mayor ganancia ya q estare realizando una app profesional por lo tanto debo trabajar
 #con los recursos de q dicha app amerita. el servido por defecto es Booting WEBrick
# despues configuramos la base de datos en este caso usamos postgresql con un comando directo
#la inicializamos rails new nuevapp -p postgresql
#de esa manera ya configuramos las base de datos y el servidor
#despues empece por crear mi primera pagina de muestra para cambiar el root welcome#index
#cree un get '/imagenes' => 'imagen'
#estube pendiente del MVC ya que el controller debe estar en plural y el modelo en singular
#images_controller
