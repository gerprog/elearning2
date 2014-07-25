class ConstructTwosController < ApplicationController
  # GET /construct_twos
  # GET /construct_twos.json
  def index
    @construct_twos = ConstructTwo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @construct_twos }
    end
  end

  # GET /construct_twos/1
  # GET /construct_twos/1.json
  def show
    @construct_two = ConstructTwo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @construct_two }
    end
  end

  # GET /construct_twos/new
  # GET /construct_twos/new.json
  def new
    @construct_two = ConstructTwo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @construct_two }
    end
  end

  # GET /construct_twos/1/edit
  def edit
    @construct_two = ConstructTwo.find(params[:id])
  end

  # POST /construct_twos
  # POST /construct_twos.json
  def create
    @construct_two = ConstructTwo.new(params[:construct_two])

    respond_to do |format|
      if @construct_two.save
        format.html { redirect_to @construct_two, notice: 'Construct two was successfully created.' }
        format.json { render json: @construct_two, status: :created, location: @construct_two }
      else
        format.html { render action: "new" }
        format.json { render json: @construct_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /construct_twos/1
  # PUT /construct_twos/1.json
  def update
    @construct_two = ConstructTwo.find(params[:id])

    respond_to do |format|
      if @construct_two.update_attributes(params[:construct_two])
        format.html { redirect_to @construct_two, notice: 'Construct two was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @construct_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /construct_twos/1
  # DELETE /construct_twos/1.json
  def destroy
    @construct_two = ConstructTwo.find(params[:id])
    @construct_two.destroy

    respond_to do |format|
      format.html { redirect_to construct_twos_url }
      format.json { head :no_content }
    end
  end
end
