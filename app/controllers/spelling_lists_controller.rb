class SpellingListsController < ApplicationController
  before_action :set_spelling_list, only: [:show, :edit, :update, :destroy]

  # GET /spelling_lists
  # GET /spelling_lists.json
  def index
    @spelling_lists = SpellingList.all
  end

  # GET /spelling_lists/1
  # GET /spelling_lists/1.json
  def show
  end

  # GET /spelling_lists/new
  def new
    @spelling_list = SpellingList.new
  end

  # GET /spelling_lists/1/edit
  def edit
  end

  # POST /spelling_lists
  # POST /spelling_lists.json
  def create
    @spelling_list = SpellingList.new(spelling_list_params)

    respond_to do |format|
      if @spelling_list.save
        format.html { redirect_to @spelling_list, notice: 'Spelling list was successfully created.' }
        format.json { render :show, status: :created, location: @spelling_list }
      else
        format.html { render :new }
        format.json { render json: @spelling_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spelling_lists/1
  # PATCH/PUT /spelling_lists/1.json
  def update
    respond_to do |format|
      if @spelling_list.update(spelling_list_params)
        format.html { redirect_to @spelling_list, notice: 'Spelling list was successfully updated.' }
        format.json { render :show, status: :ok, location: @spelling_list }
      else
        format.html { render :edit }
        format.json { render json: @spelling_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spelling_lists/1
  # DELETE /spelling_lists/1.json
  def destroy
    @spelling_list.destroy
    respond_to do |format|
      format.html { redirect_to spelling_lists_url, notice: 'Spelling list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spelling_list
      @spelling_list = SpellingList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spelling_list_params
      params.fetch(:spelling_list, {})
    end
end
