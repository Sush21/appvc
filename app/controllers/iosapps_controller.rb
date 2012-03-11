class IosappsController < ApplicationController
  # GET /iosapps
  # GET /iosapps.json
  def index
    @iosapps = Iosapp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @iosapps }
    end
  end

  # GET /iosapps/1
  # GET /iosapps/1.json
  def show
    @iosapp = Iosapp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @iosapp }
    end
  end

  # GET /iosapps/new
  # GET /iosapps/new.json
  def new
    @iosapp = Iosapp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @iosapp }
    end
  end

  # GET /iosapps/1/edit
  def edit
    @iosapp = Iosapp.find(params[:id])
  end

  # POST /iosapps
  # POST /iosapps.json
  def create
    @iosapp = Iosapp.new(params[:iosapp])

    respond_to do |format|
      if @iosapp.save
        format.html { redirect_to @iosapp, notice: 'Iosapp was successfully created.' }
        format.json { render json: @iosapp, status: :created, location: @iosapp }
      else
        format.html { render action: "new" }
        format.json { render json: @iosapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /iosapps/1
  # PUT /iosapps/1.json
  def update
    @iosapp = Iosapp.find(params[:id])

    respond_to do |format|
      if @iosapp.update_attributes(params[:iosapp])
        format.html { redirect_to @iosapp, notice: 'Iosapp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @iosapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iosapps/1
  # DELETE /iosapps/1.json
  def destroy
    @iosapp = Iosapp.find(params[:id])
    @iosapp.destroy

    respond_to do |format|
      format.html { redirect_to iosapps_url }
      format.json { head :no_content }
    end
  end
end
