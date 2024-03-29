class ProgramCyclesController < ApplicationController
  before_action :set_program_cycle, only: [:show, :edit, :update, :destroy]

  # GET /program_cycles
  # GET /program_cycles.json
  def index
    @program_cycles = ProgramCycle.all
  end

  # GET /program_cycles/1
  # GET /program_cycles/1.json
  def show
  end

  # GET /program_cycles/new
  def new
    @program_cycle = ProgramCycle.new
    program = Program.find(params[:program_id])

    if program.nil?
      redirect_to root_path
    else
      @program_cycle.program_id = program.id
    end

  end

  # GET /program_cycles/1/edit
  def edit
  end

  # POST /program_cycles
  # POST /program_cycles.json
  def create

    if !params[:program_cycle][:starts_on].nil? && params[:program_cycle][:starts_on] != ""
      params[:program_cycle][:starts_on] = Date.strptime(program_cycle_params[:starts_on], "%m/%d/%Y")
    end

    if !params[:program_cycle][:ends_on].nil? && params[:program_cycle][:ends_on] != ""
      params[:program_cycle][:ends_on] = Date.strptime(program_cycle_params[:ends_on], "%m/%d/%Y")
    end

    @program_cycle = ProgramCycle.new(program_cycle_params)

    respond_to do |format|
      if @program_cycle.save
        format.html { redirect_to @program_cycle, notice: 'Program cycle was successfully created.' }
        format.json { render :show, status: :created, location: @program_cycle }
        format.js {render :js => "window.location.reload();"}
      else
        format.html { render :new }
        format.json { render json: @program_cycle.errors, status: :unprocessable_entity }
        format.js {render 'new'} 
      end
    end
  end

  # PATCH/PUT /program_cycles/1
  # PATCH/PUT /program_cycles/1.json
  def update
    if !params[:program_cycle][:starts_on].nil? && params[:program_cycle][:starts_on] != ""
      params[:program_cycle][:starts_on] = Date.strptime(program_cycle_params[:starts_on], "%m/%d/%Y")
    end
    
    if !params[:program_cycle][:ends_on].nil? && params[:program_cycle][:ends_on] != ""
      params[:program_cycle][:ends_on] = Date.strptime(program_cycle_params[:ends_on], "%m/%d/%Y")
    end
    respond_to do |format|
      if @program_cycle.update(program_cycle_params)
        format.html { redirect_to @program_cycle, notice: 'Program cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_cycle }
        format.js {render :js => "window.location.reload();"}
      else
        format.html { render :edit }
        format.json { render json: @program_cycle.errors, status: :unprocessable_entity }
        format.js {render 'edit'} 
      end
    end
  end

  # DELETE /program_cycles/1
  # DELETE /program_cycles/1.json
  def destroy
    @program_cycle.destroy
    respond_to do |format|
      format.html { redirect_to program_cycles_url, notice: 'Program cycle was successfully destroyed.' }
      format.json { head :no_content }
      format.js {render :js => "window.location.reload();"}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_cycle
      @program_cycle = ProgramCycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_cycle_params
      params.require(:program_cycle).permit(:program_id, :name, :description, :starts_on, :ends_on)
    end
end
