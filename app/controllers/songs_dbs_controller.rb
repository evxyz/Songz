class SongsDbsController < ApplicationController
  # GET /songs_dbs
  # GET /songs_dbs.json
  def index
    @songs_dbs = SongsDb.all
#raise @songs_dbs.inspect
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @songs_dbs }
    end
  end

  # GET /songs_dbs/1
  # GET /songs_dbs/1.json
  def show
    @songs_db = SongsDb.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @songs_db }
    end
    
    
  end

  # GET /songs_dbs/new
  # GET /songs_dbs/new.json
  def new
    @songs_db = SongsDb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @songs_db }
    end
  end

  # GET /songs_dbs/1/edit
  def edit
    @songs_db = SongsDb.find(params[:id])
  end

  # POST /songs_dbs
  # POST /songs_dbs.json
  def create
    @songs_db = SongsDb.new(params[:songs_db])

    respond_to do |format|
      if @songs_db.save
        format.html { redirect_to @songs_db, notice: 'Songs db was successfully created.' }
        format.json { render json: @songs_db, status: :created, location: @songs_db }
      else
        format.html { render action: "new" }
        format.json { render json: @songs_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /songs_dbs/1
  # PUT /songs_dbs/1.json
  def update
    @songs_db = SongsDb.find(params[:id])

    respond_to do |format|
      if @songs_db.update_attributes(params[:songs_db])
        format.html { redirect_to @songs_db, notice: 'Songs db was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @songs_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs_dbs/1
  # DELETE /songs_dbs/1.json
  def destroy
    @songs_db = SongsDb.find(params[:id])
    @songs_db.destroy

    respond_to do |format|
      format.html { redirect_to songs_dbs_url }
      format.json { head :no_content }
    end
  end
end
