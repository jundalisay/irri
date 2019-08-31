class Rice1sController < ApplicationController
  before_action :set_rice1, only: [:show, :edit, :update, :destroy]

  # GET /rice1s
  # GET /rice1s.json
  def index
    @rice1s = Rice1.all
    @size = {
      height: '220',
      width: '220'
    }
    @data = {
      labels: ["#{Rice1.first.month} / #{Rice1.first.year}", "#{Rice1.second.month} / #{Rice1.second.year}", "#{Rice1.third.month} / #{Rice1.third.year}"],
      datasets: [
        {
          label: "sdfgdfs",
          fillColor: "rgba(220,220,20,0.2)",
          strokeColor: "RoyalBlue",
          pointColor: "LightSeaGreen",
          pointStrokeColor: "LightSeaGreen",
          pointHighlightFill: "LightSeaGreen",
          pointHighlightStroke: "LightSeaGreen",
          data: [Rice1.first.price, Rice1.second.price, Rice1.third.price]
        },
      ]
    }.to_json
    @maturity = {
      labels: ["#{Rice1.first.month} / #{Rice1.first.year}", "#{Rice1.second.month} / #{Rice1.second.year}", "#{Rice1.third.month} / #{Rice1.third.year}"],
      datasets: [
        {
          label: "sdfgdfs",
          fillColor: "rgba(220,220,20,0.2)",
          strokeColor: "RoyalBlue",
          pointColor: "LightSeaGreen",
          pointStrokeColor: "LightSeaGreen",
          pointHighlightFill: "LightSeaGreen",
          pointHighlightStroke: "LightSeaGreen",
          data: [Rice1.first.maturity, Rice1.second.maturity, Rice1.third.maturity]
        },
      ]
    }.to_json    
  end

  # GET /rice1s/1
  # GET /rice1s/1.json
  def show
  end

  # GET /rice1s/new
  def new
    @rice1 = Rice1.new
  end

  # GET /rice1s/1/edit
  def edit
  end

  # POST /rice1s
  # POST /rice1s.json
  def create
    @rice1 = Rice1.new(rice1_params)

    respond_to do |format|
      if @rice1.save
        format.html { redirect_to @rice1, notice: 'Rice1 was successfully created.' }
        format.json { render :show, status: :created, location: @rice1 }
      else
        format.html { render :new }
        format.json { render json: @rice1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rice1s/1
  # PATCH/PUT /rice1s/1.json
  def update
    respond_to do |format|
      if @rice1.update(rice1_params)
        format.html { redirect_to @rice1, notice: 'Rice1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @rice1 }
      else
        format.html { render :edit }
        format.json { render json: @rice1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rice1s/1
  # DELETE /rice1s/1.json
  def destroy
    @rice1.destroy
    respond_to do |format|
      format.html { redirect_to rice1s_url, notice: 'Rice1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rice1
      @rice1 = Rice1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rice1_params
      params.fetch(:rice1, {})
    end
end
