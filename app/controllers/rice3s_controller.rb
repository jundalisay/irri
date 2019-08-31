class Rice3sController < ApplicationController
  before_action :set_rice3, only: [:show, :edit, :update, :destroy]

  # GET /rice3s
  # GET /rice3s.json
  def index
    @rice3s = Rice3.all
  end

  # GET /rice3s/1
  # GET /rice3s/1.json
  def show
  end

  # GET /rice3s/new
  def new
    @rice3 = Rice3.new
  end

  # GET /rice3s/1/edit
  def edit
  end

  # POST /rice3s
  # POST /rice3s.json
  def create
    @rice3 = Rice3.new(rice3_params)

    respond_to do |format|
      if @rice3.save
        format.html { redirect_to @rice3, notice: 'Rice3 was successfully created.' }
        format.json { render :show, status: :created, location: @rice3 }
      else
        format.html { render :new }
        format.json { render json: @rice3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rice3s/1
  # PATCH/PUT /rice3s/1.json
  def update
    respond_to do |format|
      if @rice3.update(rice3_params)
        format.html { redirect_to @rice3, notice: 'Rice3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @rice3 }
      else
        format.html { render :edit }
        format.json { render json: @rice3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rice3s/1
  # DELETE /rice3s/1.json
  def destroy
    @rice3.destroy
    respond_to do |format|
      format.html { redirect_to rice3s_url, notice: 'Rice3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rice3
      @rice3 = Rice3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rice3_params
      params.fetch(:rice3, {})
    end
end
