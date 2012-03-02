class WordTypesController < ApplicationController
  # GET /word_types
  # GET /word_types.json
  def index
    @word_types = WordType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @word_types }
    end
  end

  # GET /word_types/1
  # GET /word_types/1.json
  def show
    @word_type = WordType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @word_type }
    end
  end

  # GET /word_types/new
  # GET /word_types/new.json
  def new
    @word_type = WordType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @word_type }
    end
  end

  # GET /word_types/1/edit
  def edit
    @word_type = WordType.find(params[:id])
  end

  # POST /word_types
  # POST /word_types.json
  def create
    @word_type = WordType.new(params[:word_type])

    respond_to do |format|
      if @word_type.save
        format.html { redirect_to @word_type, notice: 'Word type was successfully created.' }
        format.json { render json: @word_type, status: :created, location: @word_type }
      else
        format.html { render action: "new" }
        format.json { render json: @word_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /word_types/1
  # PUT /word_types/1.json
  def update
    @word_type = WordType.find(params[:id])

    respond_to do |format|
      if @word_type.update_attributes(params[:word_type])
        format.html { redirect_to @word_type, notice: 'Word type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @word_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_types/1
  # DELETE /word_types/1.json
  def destroy
    @word_type = WordType.find(params[:id])
    @word_type.destroy

    respond_to do |format|
      format.html { redirect_to word_types_url }
      format.json { head :no_content }
    end
  end
end
