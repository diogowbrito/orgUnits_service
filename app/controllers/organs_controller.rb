class OrgansController < ApplicationController

  def list
    @address = get_address
    @start = (params[:start] || '1').to_i
    @end = (params[:end] || '5').to_i
    @next = @address+"/organs?start="+(@end+1).to_s+"&end="+(@end+1+@end-@start).to_s

    @organs = Organ.find(:all, :order => "organ_name", :offset => @start-1, :limit => @end+1-@start)

     if @organs.count != @end+1-@start then
      @next = ""
    else
      if @organs[@end-@start].organ_name == Organ.order(:organ_name).last.organ_name
        @next = ""
      end
     end
    respond_to :xml
  end

  def specific
    @organs = Organ.find(params[:id])
    @secretary = Secretary.where(:organ_id => @organs)
    respond_to :xml
  end

  # GET /organs
  # GET /organs.xml
  def index
    @organs = Organ.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @organs }
    end
  end

  # GET /organs/1
  # GET /organs/1.xml
  def show
    @organ = Organ.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @organ }
    end
  end

  # GET /organs/new
  # GET /organs/new.xml
  def new
    @organ = Organ.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @organ }
    end
  end

  # GET /organs/1/edit
  def edit
    @organ = Organ.find(params[:id])
  end

  # POST /organs
  # POST /organs.xml
  def create
    @organ = Organ.new(params[:organ])

    respond_to do |format|
      if @organ.save
        format.html { redirect_to(@organ, :notice => 'Organ was successfully created.') }
        format.xml  { render :xml => @organ, :status => :created, :location => @organ }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @organ.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /organs/1
  # PUT /organs/1.xml
  def update
    @organ = Organ.find(params[:id])

    respond_to do |format|
      if @organ.update_attributes(params[:organ])
        format.html { redirect_to(@organ, :notice => 'Organ was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @organ.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /organs/1
  # DELETE /organs/1.xml
  def destroy
    @organ = Organ.find(params[:id])
    @organ.destroy

    respond_to do |format|
      format.html { redirect_to(organs_url) }
      format.xml  { head :ok }
    end
  end
end
