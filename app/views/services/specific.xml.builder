xml.record(:title => "Serviço: " + @services.service_name) do
  xml.text(@services.service_name, :title => "Nome")
  @location = @services.building
  @kind = "building"
  if @services.space != nil then
      @location = @location+" "+@services.space
    @kind = "room"
  end
  if @location != nil then
  xml.entity(@location, :title => "Localização do Gabinete", :kind => @kind)
  end
  if @services.coordenator != nil then
    xml.text(@services.coordenator, :title => "Coordenador")
  end
  if @services.mail != nil then
    xml.text(@services.mail, :title => "Correio")
  end
  if @services.email != nil then
    xml.email(@services.email, :title => "Email")
  end
  if @services.telephone != nil then
    xml.text(@services.telephone, :title => "Telefone")
  end
  if @services.extension != nil then
    xml.text(@services.extension, :title => "Extensão")
  end
  if @services.fax != nil then
    xml.text(@services.fax, :title => "Fax")
  end
  @sections.each do |section|
    xml.link(section.section_name, :href => "http://localhost:3003/sections/"+section.id.to_s)
  end
end