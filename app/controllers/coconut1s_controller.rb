class Coconut1sController < ApplicationController
  before_action :set_coconut1, only: [:show, :edit, :update, :destroy]

  # GET /coconut1s
  # GET /coconut1s.json
  def index
    @coconut1s = Coconut1.all
  end

  # GET /coconut1s/1
  # GET /coconut1s/1.json
  def show
  end

  # GET /coconut1s/new
  def new
    @coconut1 = Coconut1.new
  end

  # GET /coconut1s/1/edit
  def edit
  end

  # POST /coconut1s
  # POST /coconut1s.json
  def create
    @coconut1 = Coconut1.new(coconut1_params)

    respond_to do |format|
      if @coconut1.save
        format.html { redirect_to @coconut1, notice: 'Coconut1 was successfully created.' }
        format.json { render :show, status: :created, location: @coconut1 }
      else
        format.html { render :new }
        format.json { render json: @coconut1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coconut1s/1
  # PATCH/PUT /coconut1s/1.json
  def update
    respond_to do |format|
      if @coconut1.update(coconut1_params)
        format.html { redirect_to @coconut1, notice: 'Coconut1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @coconut1 }
      else
        format.html { render :edit }
        format.json { render json: @coconut1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coconut1s/1
  # DELETE /coconut1s/1.json
  def destroy
    @coconut1.destroy
    respond_to do |format|
      format.html { redirect_to coconut1s_url, notice: 'Coconut1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coconut1
      @coconut1 = Coconut1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coconut1_params
      params.fetch(:coconut1, {})
    end
end
