class SpellingTestsController < ApplicationController
  before_action :set_spelling_test, only: [:show, :edit, :update, :destroy]

  # GET /spelling_tests
  # GET /spelling_tests.json
  def index
    @spelling_tests = SpellingTest.all
  end

  # GET /spelling_tests/1
  # GET /spelling_tests/1.json
  def show
  end

  # GET /spelling_tests/new
  def new
    @spelling_test = SpellingTest.new
  end

  # GET /spelling_tests/1/edit
  def edit
  end

  # POST /spelling_tests
  # POST /spelling_tests.json
  def create
    @spelling_test = SpellingTest.new(spelling_test_params)

    respond_to do |format|
      if @spelling_test.save
        format.html { redirect_to @spelling_test, notice: 'Spelling test was successfully created.' }
        format.json { render :show, status: :created, location: @spelling_test }
      else
        format.html { render :new }
        format.json { render json: @spelling_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spelling_tests/1
  # PATCH/PUT /spelling_tests/1.json
  def update
    respond_to do |format|
      if @spelling_test.update(spelling_test_params)
        format.html { redirect_to @spelling_test, notice: 'Spelling test was successfully updated.' }
        format.json { render :show, status: :ok, location: @spelling_test }
      else
        format.html { render :edit }
        format.json { render json: @spelling_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spelling_tests/1
  # DELETE /spelling_tests/1.json
  def destroy
    @spelling_test.destroy
    respond_to do |format|
      format.html { redirect_to spelling_tests_url, notice: 'Spelling test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spelling_test
      @spelling_test = SpellingTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spelling_test_params
      params.require(:spelling_test).permit(:name, :practice, :teacher_id, :week_id)
    end
end
