xml.instruct!(:xml, :version=>"1.0")

xml.list(:title => "Orgãos", :start => @start, :end => @end, :next => @next) do
  @organs.each do |organ|
    xml.item(organ.organ_name, :href => @address+"/organs/"+organ.id.to_s)
  end
end