class Rice2sController < ApplicationController
  before_action :set_rice2, only: [:show, :edit, :update, :destroy]

  # GET /rice2s
  # GET /rice2s.json
  def index
    @rice2s = Rice2.all
  end

  # GET /rice2s/1
  # GET /rice2s/1.json
  def show
  end

  # GET /rice2s/new
  def new
    @rice2 = Rice2.new
  end

  # GET /rice2s/1/edit
  def edit
  end

  # POST /rice2s
  # POST /rice2s.json
  def create
    @rice2 = Rice2.new(rice2_params)

    respond_to do |format|
      if @rice2.save
        format.html { redirect_to @rice2, notice: 'Rice2 was successfully created.' }
        format.json { render :show, status: :created, location: @rice2 }
      else
        format.html { render :new }
        format.json { render json: @rice2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rice2s/1
  # PATCH/PUT /rice2s/1.json
  def update
    respond_to do |format|
      if @rice2.update(rice2_params)
        format.html { redirect_to @rice2, notice: 'Rice2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @rice2 }
      else
        format.html { render :edit }
        format.json { render json: @rice2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rice2s/1
  # DELETE /rice2s/1.json
  def destroy
    @rice2.destroy
    respond_to do |format|
      format.html { redirect_to rice2s_url, notice: 'Rice2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rice2
      @rice2 = Rice2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rice2_params
      params.fetch(:rice2, {})
    end
end
