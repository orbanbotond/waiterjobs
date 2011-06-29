class TextualPagesController < ApplicationController
  # GET /textual_pages
  # GET /textual_pages.xml
  def index
    @textual_pages = TextualPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @textual_pages }
    end
  end

  # GET /textual_pages/1
  # GET /textual_pages/1.xml
  def show
    @textual_page = TextualPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @textual_page }
    end
  end

  # GET /textual_pages/new
  # GET /textual_pages/new.xml
  def new
    @textual_page = TextualPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @textual_page }
    end
  end

  # GET /textual_pages/1/edit
  def edit
    @textual_page = TextualPage.find(params[:id])
  end

  # POST /textual_pages
  # POST /textual_pages.xml
  def create
    @textual_page = TextualPage.new(params[:textual_page])

    respond_to do |format|
      if @textual_page.save
        format.html { redirect_to(@textual_page, :notice => 'Textual page was successfully created.') }
        format.xml  { render :xml => @textual_page, :status => :created, :location => @textual_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @textual_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /textual_pages/1
  # PUT /textual_pages/1.xml
  def update
    @textual_page = TextualPage.find(params[:id])

    respond_to do |format|
      if @textual_page.update_attributes(params[:textual_page])
        format.html { redirect_to(@textual_page, :notice => 'Textual page was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @textual_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /textual_pages/1
  # DELETE /textual_pages/1.xml
  def destroy
    @textual_page = TextualPage.find(params[:id])
    @textual_page.destroy

    respond_to do |format|
      format.html { redirect_to(textual_pages_url) }
      format.xml  { head :ok }
    end
  end
end
