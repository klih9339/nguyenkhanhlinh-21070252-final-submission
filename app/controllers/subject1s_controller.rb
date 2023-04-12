class Subject1sController < ApplicationController
  before_action :set_subject1, only: %i[ show edit update destroy ]

  # GET /subject1s or /subject1s.json
  def index
    @subject1s = Subject1.all
  end

  # GET /subject1s/1 or /subject1s/1.json
  def show
  end

  # GET /subject1s/new
  def new
    @subject1 = Subject1.new
  end

  # GET /subject1s/1/edit
  def edit
  end

  # POST /subject1s or /subject1s.json
  def create
    @subject1 = Subject1.new(subject1_params)

    respond_to do |format|
      if @subject1.save
        format.html { redirect_to subject1_url(@subject1), notice: "Subject1 was successfully created." }
        format.json { render :show, status: :created, location: @subject1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subject1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject1s/1 or /subject1s/1.json
  def update
    respond_to do |format|
      if @subject1.update(subject1_params)
        format.html { redirect_to subject1_url(@subject1), notice: "Subject1 was successfully updated." }
        format.json { render :show, status: :ok, location: @subject1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subject1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject1s/1 or /subject1s/1.json
  def destroy
    @subject1.destroy

    respond_to do |format|
      format.html { redirect_to subject1s_url, notice: "Subject1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject1
      @subject1 = Subject1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subject1_params
      params.require(:subject1).permit(:name_subject, :code_subject, :credit, :place)
    end
end
