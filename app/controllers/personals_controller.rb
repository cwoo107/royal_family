class PersonalsController < ApplicationController
  before_action :set_personal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /personals
  # GET /personals.json
  def index
    @personals = Personal.all
    @personals = current_user.personal
  end

  # GET /personals/1
  # GET /personals/1.json
  def show
    #if current_user.personal = nil
     # {redirect_to new_personal_path}
    #end
  end

  # GET /personals/new
  def new
    @personal = Personal.new
  end

  # GET /personals/1/edit
  def edit
  end

  # POST /personals
  # POST /personals.json
  def create
    @personal = Personal.new(personal_params)
    @personal.user_id = current_user.id

    respond_to do |format|
      if @personal.save
        format.html { redirect_to @personal, notice: 'Personal was successfully created.' }
        format.json { render :show, status: :created, location: @personal }
      else
        format.html { render :new }
        format.json { render json: @personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personals/1
  # PATCH/PUT /personals/1.json
  def update
    respond_to do |format|
      if @personal.update(personal_params)
        format.html { redirect_to @personal, notice: 'Personal was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal }
      else
        format.html { render :edit }
        format.json { render json: @personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personals/1
  # DELETE /personals/1.json
  def destroy
    @personal.destroy
    respond_to do |format|
      format.html { redirect_to personals_url, notice: 'Personal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal
      @personal = Personal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_params
      params.require(:personal).permit(:birthdate, :sex, :married, :occupation, :employer, :years_in_state, :months_in_state, :emergency_contact, :relationship, :emer_phone, :shirt_size, :cpr, :first_aid, :life_guard, :nurse, :emt, :have_worked_with_abused, :describe_work_with_abused, :was_victim, :discuss_abuse, :clarify, :why_you_want_to_counsel, :user_id)
    end
end
