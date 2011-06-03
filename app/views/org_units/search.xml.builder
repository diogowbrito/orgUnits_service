xml.instruct!(:xml, :version=>"1.0")

xml.list(:title => @keyword, :start => @start, :end => @end, :next => @next) do
  @list.each do |item|
    xml.item(item.department_name, :title => "Department", :href => @address+"/departments/"+item.id.to_s)
  end

  @list1.each do |item|
    xml.item(item.organ_name, :title => "Organ", :href => @address+"/organs/"+item.id.to_s)
  end

  @list2.each do |item|
    xml.item(item.service_name, :title => "Services", :href => @address+"/services/"+item.id.to_s)
  end
end