class ConstructOnesController < ApplicationController
  # GET /construct_ones
  # GET /construct_ones.json
  def index
    @construct_ones = ConstructOne.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @construct_ones }
    end
  end

  # GET /construct_ones/1
  # GET /construct_ones/1.json
  def show
    @construct_one = ConstructOne.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @construct_one }
    end
  end

  # GET /construct_ones/new
  # GET /construct_ones/new.json
  def new
    @construct_one = ConstructOne.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @construct_one }
    end
  end

  # GET /construct_ones/1/edit
  def edit
    @construct_one = ConstructOne.find(params[:id])
  end

  # POST /construct_ones
  # POST /construct_ones.json
  def create
    @construct_one = ConstructOne.new(params[:construct_one])

    respond_to do |format|
      if @construct_one.save
        format.html { redirect_to @construct_one, notice: 'Construct one was successfully created.' }
        format.json { render json: @construct_one, status: :created, location: @construct_one }
      else
        format.html { render action: "new" }
        format.json { render json: @construct_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /construct_ones/1
  # PUT /construct_ones/1.json
  def update
    @construct_one = ConstructOne.find(params[:id])

    respond_to do |format|
      if @construct_one.update_attributes(params[:construct_one])
        format.html { redirect_to @construct_one, notice: 'Construct one was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @construct_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /construct_ones/1
  # DELETE /construct_ones/1.json
  def destroy
    @construct_one = ConstructOne.find(params[:id])
    @construct_one.destroy

    respond_to do |format|
      format.html { redirect_to construct_ones_url }
      format.json { head :no_content }
    end
  end
end
