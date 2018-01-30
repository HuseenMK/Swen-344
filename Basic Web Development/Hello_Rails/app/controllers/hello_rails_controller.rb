class HelloRailsController < ApplicationController
  before_action :set_hello_rail, only: [:show, :edit, :update, :destroy]

  # GET /hello_rails
  # GET /hello_rails.json
  def index
    @hello_rails = HelloRail.all
  end

  # GET /hello_rails/1
  # GET /hello_rails/1.json
  def show
  end

  # GET /hello_rails/new
  def new
    @hello_rail = HelloRail.new
  end

  # GET /hello_rails/1/edit
  def edit
  end

  # POST /hello_rails
  # POST /hello_rails.json
  def create
    @hello_rail = HelloRail.new(hello_rail_params)

    respond_to do |format|
      if @hello_rail.save
        format.html { redirect_to @hello_rail, notice: 'Hello rail was successfully created.' }
        format.json { render :show, status: :created, location: @hello_rail }
      else
        format.html { render :new }
        format.json { render json: @hello_rail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hello_rails/1
  # PATCH/PUT /hello_rails/1.json
  def update
    respond_to do |format|
      if @hello_rail.update(hello_rail_params)
        format.html { redirect_to @hello_rail, notice: 'Hello rail was successfully updated.' }
        format.json { render :show, status: :ok, location: @hello_rail }
      else
        format.html { render :edit }
        format.json { render json: @hello_rail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hello_rails/1
  # DELETE /hello_rails/1.json
  def destroy
    @hello_rail.destroy
    respond_to do |format|
      format.html { redirect_to hello_rails_url, notice: 'Hello rail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hello_rail
      @hello_rail = HelloRail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hello_rail_params
      params.require(:hello_rail).permit(:name, :due_on, :completed)
    end
end
