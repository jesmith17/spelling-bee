class SpellingWordsController < ApplicationController
  before_action :set_spelling_word, only: [:show, :edit, :update, :destroy]

  # GET /spelling_words
  # GET /spelling_words.json
  def index
    @spelling_words = SpellingWord.all
  end

  # GET /spelling_words/1
  # GET /spelling_words/1.json
  def show
  end

  # GET /spelling_words/new
  def new
    @spelling_word = SpellingWord.new
  end

  # GET /spelling_words/1/edit
  def edit
  end

  # POST /spelling_words
  # POST /spelling_words.json
  def create
    @spelling_word = SpellingWord.new(spelling_word_params)

    respond_to do |format|
      if @spelling_word.save
        format.html { redirect_to @spelling_word, notice: 'Spelling word was successfully created.' }
        format.json { render :show, status: :created, location: @spelling_word }
      else
        format.html { render :new }
        format.json { render json: @spelling_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spelling_words/1
  # PATCH/PUT /spelling_words/1.json
  def update
    respond_to do |format|
      if @spelling_word.update(spelling_word_params)
        format.html { redirect_to @spelling_word, notice: 'Spelling word was successfully updated.' }
        format.json { render :show, status: :ok, location: @spelling_word }
      else
        format.html { render :edit }
        format.json { render json: @spelling_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spelling_words/1
  # DELETE /spelling_words/1.json
  def destroy
    @spelling_word.destroy
    respond_to do |format|
      format.html { redirect_to spelling_words_url, notice: 'Spelling word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spelling_word
      @spelling_word = SpellingWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spelling_word_params
      params.require(:spelling_word).permit(:word, :definition, :spelling_list_id)
    end
end
