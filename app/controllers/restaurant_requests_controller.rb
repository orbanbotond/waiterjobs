class RestaurantRequestsController < ApplicationController
  before_filter :authenticate, :except  => [:new, :create, :thank_you]

  # GET /restaurant_requests
  # GET /restaurant_requests.xml
  def index
    @restaurant_requests = RestaurantRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @restaurant_requests }
    end
  end

  # GET /restaurant_requests/1
  # GET /restaurant_requests/1.xml
  def show
    @restaurant_request = RestaurantRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @restaurant_request }
    end
  end

  # GET /restaurant_requests/new
  # GET /restaurant_requests/new.xml
  def new
    @restaurant_request = RestaurantRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @restaurant_request }
    end
  end

  # GET /restaurant_requests/1/edit
  def edit
    @restaurant_request = RestaurantRequest.find(params[:id])
  end

  # POST /restaurant_requests
  # POST /restaurant_requests.xml
  def create
    @restaurant_request = RestaurantRequest.new(params[:restaurant_request])

    respond_to do |format|
      if @restaurant_request.save
        format.html { redirect_to thank_you_for_registering_path }
        format.xml  { render :xml => @restaurant_request, :status => :created, :location => @restaurant_request }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @restaurant_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /restaurant_requests/1
  # PUT /restaurant_requests/1.xml
  def update
    @restaurant_request = RestaurantRequest.find(params[:id])

    respond_to do |format|
      if @restaurant_request.update_attributes(params[:restaurant_request])
        format.html { redirect_to( restaurant_request_review_path(@restaurant_request), :notice => 'Restaurant request was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @restaurant_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_requests/1
  # DELETE /restaurant_requests/1.xml
  def destroy
    @restaurant_request = RestaurantRequest.find(params[:id])
    @restaurant_request.destroy

    respond_to do |format|
      format.html { redirect_to(restaurant_request_reviews_url) }
      format.xml  { head :ok }
    end
  end
  
  def thank_you
    @request = RestaurantRequest.order("created_at DESC").first
  end
end
