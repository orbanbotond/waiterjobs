class RestaurantPagesController < ApplicationController
  # GET /restaurant_pages
  # GET /restaurant_pages.xml
  def index
    @restaurant_pages = RestaurantPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @restaurant_pages }
    end
  end

  # GET /restaurant_pages/1
  # GET /restaurant_pages/1.xml
  def show
    @restaurant_page = RestaurantPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @restaurant_page }
    end
  end

  # GET /restaurant_pages/new
  # GET /restaurant_pages/new.xml
  def new
    @restaurant_page = RestaurantPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @restaurant_page }
    end
  end

  # GET /restaurant_pages/1/edit
  def edit
    @restaurant_page = RestaurantPage.find(params[:id])
  end

  # POST /restaurant_pages
  # POST /restaurant_pages.xml
  def create
    @restaurant_page = RestaurantPage.new(params[:restaurant_page])

    respond_to do |format|
      if @restaurant_page.save
        format.html { redirect_to(@restaurant_page, :notice => 'Restaurant page was successfully created.') }
        format.xml  { render :xml => @restaurant_page, :status => :created, :location => @restaurant_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @restaurant_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /restaurant_pages/1
  # PUT /restaurant_pages/1.xml
  def update
    @restaurant_page = RestaurantPage.find(params[:id])

    respond_to do |format|
      if @restaurant_page.update_attributes(params[:restaurant_page])
        format.html { redirect_to(@restaurant_page, :notice => 'Restaurant page was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @restaurant_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_pages/1
  # DELETE /restaurant_pages/1.xml
  def destroy
    @restaurant_page = RestaurantPage.find(params[:id])
    @restaurant_page.destroy

    respond_to do |format|
      format.html { redirect_to(restaurant_pages_url) }
      format.xml  { head :ok }
    end
  end
end
