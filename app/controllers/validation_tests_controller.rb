class ValidationTestsController < ApplicationController
  before_action :set_validation_test, only: [:show, :edit, :update, :destroy]

  # GET /validation_tests
  # GET /validation_tests.json
  def index
    @validation_tests = ValidationTest.all
  end

  # GET /validation_tests/1
  # GET /validation_tests/1.json
  def show
  end

  # GET /validation_tests/new
  def new
    @validation_test = ValidationTest.new
  end

  # GET /validation_tests/1/edit
  def edit
  end

  # POST /validation_tests
  # POST /validation_tests.json
  def create
    @validation_test = ValidationTest.new(validation_test_params)

    respond_to do |format|
      if @validation_test.save
        format.html { redirect_to @validation_test, notice: 'Validation test was successfully created.' }
        format.json { render :show, status: :created, location: @validation_test }
      else
        format.html { render :new }
        format.json { render json: @validation_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /validation_tests/1
  # PATCH/PUT /validation_tests/1.json
  def update
    respond_to do |format|
      if @validation_test.update(validation_test_params)
        format.html { redirect_to @validation_test, notice: 'Validation test was successfully updated.' }
        format.json { render :show, status: :ok, location: @validation_test }
      else
        format.html { render :edit }
        format.json { render json: @validation_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /validation_tests/1
  # DELETE /validation_tests/1.json
  def destroy
    @validation_test.destroy
    respond_to do |format|
      format.html { redirect_to validation_tests_url, notice: 'Validation test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_validation_test
      @validation_test = ValidationTest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def validation_test_params
      params.require(:validation_test).permit(:userName, :postNum, :age, :url, :mailaddress)
    end
end
