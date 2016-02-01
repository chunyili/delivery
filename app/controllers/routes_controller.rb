class RoutesController < ApplicationController

  require_relative '../helpers/application_helper.rb'

  before_action :set_route, only: [:show, :edit, :update, :destroy]


  # GET /routes
  # GET /routes.json
  def index
    @routes = Route.all
  end

  # GET /routes/1
  # GET /routes/1.json
  def show
  end

  # GET /routes/new
  def new
    @route = Route.new
  end

  # GET /routes/1/edit
  def edit
  end

  include ApplicationHelper
  def test
    @routes = Route.all
    @nodes = Hash.new
    @routes.each do |route|
      @node = Node.new(route.dept)
      @node.store_id = route.dept
      if !@nodes.include? @node.store_id
        @node.adjacents << route.arvl
        @nodes[@node.store_id] = @node
      else
        @nodes[route.dept].adjacents << route.arvl
        #@temp.adjacents << route.arvl
      end
    end
    @start = @nodes[1301]
    @end = @nodes[2302]
    puts @nodes

    bfs = BreathFirstSearch.new(@nodes, @start, @end)
    render :index
  end

  # POST /routes
  # POST /routes.json
  def create
    @route = Route.new(route_params)

    respond_to do |format|
      if @route.save
        format.html { redirect_to @route, notice: 'Route was successfully created.' }
        format.json { render :show, status: :created, location: @route }
      else
        format.html { render :new }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /routes/1
  # PATCH/PUT /routes/1.json
  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to @route, notice: 'Route was successfully updated.' }
        format.json { render :show, status: :ok, location: @route }
      else
        format.html { render :edit }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routes/1
  # DELETE /routes/1.json
  def destroy
    @route.destroy
    respond_to do |format|
      format.html { redirect_to routes_url, notice: 'Route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      #@route = Route.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_params
      params.require(:route).permit(:route_id, :dept, :arvl)
    end
end