xml.record(:title => "Secção: " + @sections.section_name) do
  xml.text(@sections.section_name, :title => "Nome")
  xml.text(@sections.schedule, :title => "Horário")
  @location = @sections.building
  @kind = "building"
  if @sections.space != nil then
      @location = @location+" "+@sections.space
    @kind = "room"
  end
  if @location != nil then
  xml.entity(@location, :title => "Localização do Gabinete", :kind => @kind)
  end
  if @sections.coordenator != nil then
    xml.text(@sections.coordenator, :title => "Coordenador")
  end
  xml.text(@sections.mail, :title => "Correio")
  xml.email(@sections.email, :title => "Email")
  xml.text(@sections.telephone, :title => "Telefone")
  xml.text(@sections.extension, :title => "Extensão")
  if @sections.fax != nil then
    xml.text(@sections.fax, :title => "Fax")
  end

end