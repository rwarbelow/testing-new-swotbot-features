class StudentActionsController < ApplicationController
  before_action :set_student_action, only: [:show, :edit, :update, :destroy]

  # GET /student_actions
  # GET /student_actions.json
  def index
    @student_actions = StudentAction.all.sort! { |a, b| b.created_at <=> a.created_at }
  end

  # GET /student_actions/1
  # GET /student_actions/1.json
  def show
  end

  # GET /student_actions/new
  def new
    @student_action = StudentAction.new
  end

  # GET /student_actions/1/edit
  def edit
  end

  # POST /student_actions
  # POST /student_actions.json
  def create
    @student_action = StudentAction.new(student_action_params)

    respond_to do |format|
      if @student_action.save
        format.html { redirect_to @student_action, notice: 'Student action was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student_action }
      else
        format.html { render action: 'new' }
        format.json { render json: @student_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_actions/1
  # PATCH/PUT /student_actions/1.json
  def update
    respond_to do |format|
      if @student_action.update(student_action_params)
        format.html { redirect_to @student_action, notice: 'Student action was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_actions/1
  # DELETE /student_actions/1.json
  def destroy
    @student_action.destroy
    respond_to do |format|
      format.html { redirect_to student_actions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_action
      @student_action = StudentAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_action_params
      params.require(:student_action).permit(:action_type_id, :student_id)
    end
end
