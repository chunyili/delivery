class CustomerAddsController < ApplicationController
  before_action :set_customer_add, only: [:show, :edit, :update, :destroy]

  # GET /customer_adds
  # GET /customer_adds.json
  def index
    if current_user.try(:admin?)
      @customer_adds = CustomerAdd.all
    else
      @customer = Customer.find_by email: current_user.email
      @customer_add = CustomerAdd.find_by c_id: @customer.customer_id

      redirect_to "/customers/", id: @customer_add.id
    end
  end

  # GET /customer_adds/1
  # GET /customer_adds/1.json
  def show
  end

  # GET /customer_adds/new
  def new
    @customer_add = CustomerAdd.new
  end

  # GET /customer_adds/1/edit
  def edit
  end

  # POST /customer_adds
  # POST /customer_adds.json
  def create
    @customer_add = CustomerAdd.new(customer_add_params)

    respond_to do |format|
      if @customer_add.save
        format.html { redirect_to @customer_add, notice: 'Customer add was successfully created.' }
        format.json { render :show, status: :created, location: @customer_add }
      else
        format.html { render :new }
        format.json { render json: @customer_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_adds/1
  # PATCH/PUT /customer_adds/1.json
  def update
    respond_to do |format|
      if @customer_add.update(customer_add_params)
        format.html { redirect_to @customer_add, notice: 'Customer add was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_add }
      else
        format.html { render :edit }
        format.json { render json: @customer_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_adds/1
  # DELETE /customer_adds/1.json
  def destroy
    @customer_add.destroy
    respond_to do |format|
      format.html { redirect_to customer_adds_url, notice: 'Customer add was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_add
      @customer_add = CustomerAdd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_add_params
      params.require(:customer_add).permit(:c_id, :country, :state, :city, :street, :zipcode)
    end
end
