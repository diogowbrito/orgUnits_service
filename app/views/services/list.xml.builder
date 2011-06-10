xml.instruct!(:xml, :version=>"1.0")

xml.list(:title => "Serviços", :start => @start, :end => @end, :next => @next) do
  @services.each do |service|
    xml.item(service.service_name, :href => @address+"/services/"+service.id.to_s)
  end
end