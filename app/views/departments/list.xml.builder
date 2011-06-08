xml.instruct!(:xml, :version=>"1.0")

xml.list(:title => "Departamentos", :start => @start, :end => @end, :next => @next) do
  @departments.each do |department|
    xml.item(department.department_name, :href => @address+"/departments/"+department.id.to_s)
  end
end