class Home < SitePrism::Page
  set_url ENVIRONMENT['URL']['HOME']
  def home
    Home.new
  end
  def formulario
  	Formulario.new
  end
  def proxima
    Proxima.new
  end
end