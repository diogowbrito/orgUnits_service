xml.record(:title => "Departmento") do
  xml.text(@department.department_name, :title => "Nome")
  xml.link(@department.site, :title => "Site", :ehref => @department.site)
  xml.text(@department.symbol, :title => "Símbolo")
  xml.entity(@department.building, :title => "Edifício", :kind => "building")
end
