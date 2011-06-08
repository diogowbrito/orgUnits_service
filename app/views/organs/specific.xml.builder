xml.record(:title => "Orgão") do
  xml.text(@organs.organ_name, :title => "Nome")
  @location = @organs.building
  @kind = "building"
  if @organs.space != nil then
      @location = @location+" "+@organs.space
    @kind = "room"
  end
  if @location != nil then
  xml.entity(@location, :title => "Localização do Gabinete", :kind => @kind)
  end
  if @organs.president != nil then
    xml.entity(@organs.president, :title => "Presidente", :kind => "person")
  else
    xml.entity(@organs.subdirector, :title => "Subdirector", :kind => "person")
  end
  xml.text(@organs.mail, :title => "Correio")
  xml.email(@organs.email, :title => "Email")
  xml.text(@organs.telephone, :title => "Telefone")
  if @organs.extension != nil then
    xml.text(@organs.extension, :title => "Extensão")
  end
  xml.text(@organs.fax, :title => "Fax")
  xml.text(:title => "Secretariado") do
    @secretary.each do |ele|
      xml.text(:title => "Secretária") do
        xml.entity(ele.secretary_name, :title => "Nome", :kind => "person")
        if ele.email != nil then
          xml.email(ele.email, :title => "Emails")
        end
      end
    end
  end

end