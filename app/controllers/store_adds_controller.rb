class StoreAddsController < ApplicationController
  before_action :set_store_add, only: [:show, :edit, :update, :destroy]

  # GET /store_adds
  # GET /store_adds.json
  def index
    @store_adds = StoreAdd.all
  end

  # GET /store_adds/1
  # GET /store_adds/1.json
  def show
  end

  # GET /store_adds/new
  def new
    @store_add = StoreAdd.new
  end

  # GET /store_adds/1/edit
  def edit
  end

  # POST /store_adds
  # POST /store_adds.json
  def create
    @store_add = StoreAdd.new(store_add_params)

    respond_to do |format|
      if @store_add.save
        format.html { redirect_to @store_add, notice: 'Store add was successfully created.' }
        format.json { render :show, status: :created, location: @store_add }
      else
        format.html { render :new }
        format.json { render json: @store_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_adds/1
  # PATCH/PUT /store_adds/1.json
  def update
    respond_to do |format|
      if @store_add.update(store_add_params)
        format.html { redirect_to @store_add, notice: 'Store add was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_add }
      else
        format.html { render :edit }
        format.json { render json: @store_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_adds/1
  # DELETE /store_adds/1.json
  def destroy
    @store_add.destroy
    respond_to do |format|
      format.html { redirect_to store_adds_url, notice: 'Store add was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_add
      @store_add = StoreAdd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_add_params
      params.require(:store_add).permit(:s_id, :country, :state, :city, :street, :zipcode, :timezone)
    end
end
