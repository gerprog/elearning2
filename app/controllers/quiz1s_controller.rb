class Quiz1sController < ApplicationController
  # GET /quiz1s
  # GET /quiz1s.json
  def index
    @quiz1s = Quiz1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quiz1s }
    end
  end

  # GET /quiz1s/1
  # GET /quiz1s/1.json
  def show
    @quiz1 = Quiz1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quiz1 }
    end
  end

  # GET /quiz1s/new
  # GET /quiz1s/new.json
  def new
    @quiz1 = Quiz1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quiz1 }
    end
  end

  # GET /quiz1s/1/edit
  def edit
    @quiz1 = Quiz1.find(params[:id])
  end

  # POST /quiz1s
  # POST /quiz1s.json
  def create
    @quiz1 = Quiz1.new(params[:quiz1])

    respond_to do |format|
      if @quiz1.save
        format.html { redirect_to @quiz1, notice: 'Quiz1 was successfully created.' }
        format.json { render json: @quiz1, status: :created, location: @quiz1 }
      else
        format.html { render action: "new" }
        format.json { render json: @quiz1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quiz1s/1
  # PUT /quiz1s/1.json
  def update
    @quiz1 = Quiz1.find(params[:id])

    respond_to do |format|
      if @quiz1.update_attributes(params[:quiz1])
        format.html { redirect_to @quiz1, notice: 'Quiz1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quiz1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiz1s/1
  # DELETE /quiz1s/1.json
  def destroy
    @quiz1 = Quiz1.find(params[:id])
    @quiz1.destroy

    respond_to do |format|
      format.html { redirect_to quiz1s_url }
      format.json { head :no_content }
    end
  end
end
