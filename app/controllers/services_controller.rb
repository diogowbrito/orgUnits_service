class ServicesController < ApplicationController

  def list
    @address = get_address
    @start = (params[:start] || '1').to_i
    @end = (params[:end] || '7').to_i
    @next = @address+"/services?start="+(@end+1).to_s+"&end="+(@end+1+@end-@start).to_s

    @services = Service.find(:all, :order => "service_name", :offset => @start.to_i-1, :limit => @end.to_i+1-@start.to_i)

     if @services.count != @end+1-@start then
      @next = ""
    else
      if @services[@end-@start].service_name == Service.order(:service_name).last.service_name
        @next = ""
      end
    end

    respond_to :xml
  end

  def specific
    @services = Service.find(params[:id])
    @sections = Section.where(:service_id => @services)
    respond_to :xml
  end

  # GET /services
  # GET /services.xml
  def index
    @services = Service.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @services }
    end
  end

  # GET /services/1
  # GET /services/1.xml
  def show
    @service = Service.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service }
    end
  end

  # GET /services/new
  # GET /services/new.xml
  def new
    @service = Service.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service }
    end
  end

  # GET /services/1/edit
  def edit
    @service = Service.find(params[:id])
  end

  # POST /services
  # POST /services.xml
  def create
    @service = Service.new(params[:service])

    respond_to do |format|
      if @service.save
        format.html { redirect_to(@service, :notice => 'Service was successfully created.') }
        format.xml  { render :xml => @service, :status => :created, :location => @service }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /services/1
  # PUT /services/1.xml
  def update
    @service = Service.find(params[:id])

    respond_to do |format|
      if @service.update_attributes(params[:service])
        format.html { redirect_to(@service, :notice => 'Service was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.xml
  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_to do |format|
      format.html { redirect_to(services_url) }
      format.xml  { head :ok }
    end
  end
end
