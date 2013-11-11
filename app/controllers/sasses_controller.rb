class SassesController < ApplicationController
  # GET /sasses
  # GET /sasses.xml
  def index
    @sasses = Sass.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sasses }
    end
  end

  # GET /sasses/1
  # GET /sasses/1.xml
  def show
    @sass = Sass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sass }
    end
  end

  # GET /sasses/new
  # GET /sasses/new.xml
  def new
    @sass = Sass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sass }
    end
  end

  # GET /sasses/1/edit
  def edit
    @sass = Sass.find(params[:id])
  end

  # POST /sasses
  # POST /sasses.xml
  def create
    @sass = Sass.new(params[:sass])

    respond_to do |format|
      if @sass.save
        flash[:notice] = 'Sass was successfully created.'
        format.html { redirect_to(@sass) }
        format.xml  { render :xml => @sass, :status => :created, :location => @sass }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sasses/1
  # PUT /sasses/1.xml
  def update
    @sass = Sass.find(params[:id])

    respond_to do |format|
      if @sass.update_attributes(params[:sass])
        flash[:notice] = 'Sass was successfully updated.'
        format.html { redirect_to(@sass) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sasses/1
  # DELETE /sasses/1.xml
  def destroy
    @sass = Sass.find(params[:id])
    @sass.destroy

    respond_to do |format|
      format.html { redirect_to(sasses_url) }
      format.xml  { head :ok }
    end
  end
end
