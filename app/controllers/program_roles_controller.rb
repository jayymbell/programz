class ProgramRolesController < ApplicationController
  before_action :set_program_role, only: [:show, :edit, :update, :destroy]

  # GET /program_roles
  # GET /program_roles.json
  def index
    @program_roles = ProgramRole.all
  end

  # GET /program_roles/1
  # GET /program_roles/1.json
  def show
  end

  # GET /program_roles/new
  def new
    @program_role = ProgramRole.new
  end

  # GET /program_roles/1/edit
  def edit
  end

  # POST /program_roles
  # POST /program_roles.json
  def create
    @program_role = ProgramRole.new(program_role_params)

    respond_to do |format|
      if @program_role.save
        format.html { redirect_to @program_role, notice: 'Program role was successfully created.' }
        format.json { render :show, status: :created, location: @program_role }
      else
        format.html { render :new }
        format.json { render json: @program_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_roles/1
  # PATCH/PUT /program_roles/1.json
  def update
    respond_to do |format|
      if @program_role.update(program_role_params)
        format.html { redirect_to @program_role, notice: 'Program role was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_role }
      else
        format.html { render :edit }
        format.json { render json: @program_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_roles/1
  # DELETE /program_roles/1.json
  def destroy
    @program_role.destroy
    respond_to do |format|
      format.html { redirect_to program_roles_url, notice: 'Program role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_role
      @program_role = ProgramRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_role_params
      params.require(:program_role).permit(:program_id, :name, :description)
    end
end
