class Coffee1sController < ApplicationController
  before_action :set_coffee1, only: [:show, :edit, :update, :destroy]

  def index
    @coffee1s = Coffee1.all
    @size = {
      height: '220',
      width: '220'
    }
    @data = {
      labels: ["#{Coffee1.first.month} / #{Coffee1.first.year}", "#{Coffee1.second.month} / #{Coffee1.second.year}", "#{Coffee1.third.month} / #{Coffee1.third.year}"],
      datasets: [
        {
          label: "sdfgdfs",
          fillColor: "rgba(220,220,20,0.2)",
          strokeColor: "RoyalBlue",
          pointColor: "LightSeaGreen",
          pointStrokeColor: "LightSeaGreen",
          pointHighlightFill: "LightSeaGreen",
          pointHighlightStroke: "LightSeaGreen",
          data: [Coffee1.first.price, Coffee1.second.price, Coffee1.third.price]
        },
      ]
    }.to_json
    @maturity = {
      labels: ["#{Coffee1.first.month} / #{Coffee1.first.year}", "#{Coffee1.second.month} / #{Coffee1.second.year}", "#{Coffee1.third.month} / #{Coffee1.third.year}"],
      datasets: [
        {
          label: "sdfgdfs",
          fillColor: "rgba(220,220,20,0.2)",
          strokeColor: "RoyalBlue",
          pointColor: "LightSeaGreen",
          pointStrokeColor: "LightSeaGreen",
          pointHighlightFill: "LightSeaGreen",
          pointHighlightStroke: "LightSeaGreen",
          data: [Coffee1.first.maturity, Coffee1.second.maturity, Coffee1.third.maturity]
        },
      ]
    }.to_json    
  end

  def show
  end

  # GET /coffee1s/new
  def new
    @coffee1 = Coffee1.new
  end

  # GET /coffee1s/1/edit
  def edit
  end

  # POST /coffee1s
  # POST /coffee1s.json
  def create
    @coffee1 = Coffee1.new(coffee1_params)

    respond_to do |format|
      if @coffee1.save
        format.html { redirect_to @coffee1, notice: 'Coffee1 was successfully created.' }
        format.json { render :show, status: :created, location: @coffee1 }
      else
        format.html { render :new }
        format.json { render json: @coffee1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coffee1s/1
  # PATCH/PUT /coffee1s/1.json
  def update
    respond_to do |format|
      if @coffee1.update(coffee1_params)
        format.html { redirect_to @coffee1, notice: 'Coffee1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @coffee1 }
      else
        format.html { render :edit }
        format.json { render json: @coffee1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffee1s/1
  # DELETE /coffee1s/1.json
  def destroy
    @coffee1.destroy
    respond_to do |format|
      format.html { redirect_to coffee1s_url, notice: 'Coffee1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee1
      @coffee1 = Coffee1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coffee1_params
      params.fetch(:coffee1, {})
    end
end
