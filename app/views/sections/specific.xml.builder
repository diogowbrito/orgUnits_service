xml.record(:title => "Section") do
  xml.text(@sections.section_name, :title => "Name")
  xml.text(@sections.schedule, :title => "Schedule")
  @location = @sections.building
  @kind = "building"
  if @sections.space != nil then
      @location = @location+" "+@sections.space
    @kind = "room"
  end
  if @location != nil then
  xml.entity(@location, :title => "Office Location", :kind => @kind)
  end
  if @sections.coordenator != nil then
    xml.text(@sections.coordenator, :title => "Coordenator")
  end
  xml.text(@sections.mail, :title => "Mail")
  xml.email(@sections.email)
  xml.text(@sections.telephone, :title => "Telephone")
  xml.text(@sections.extension, :title => "Extension")
  if @sections.fax != nil then
    xml.text(@sections.fax, :title => "Fax")
  end

end