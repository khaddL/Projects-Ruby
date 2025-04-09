class PagesController < ApplicationController
  before_action :set_page, only: %i[show edit update destroy]

  def index
    @pages = Page.all
  end
  def show
    @page = Page.find(params[:id])

    
    if @page.emoji_category.present?
      @emoji = EmojiService.get_emoji_by_category(@page.emoji_category)
      
      if @emoji && @emoji['htmlCode'].present?
        @page.update(emoji: @emoji['htmlCode'][0]) if @page.emoji.blank? 
      else
        @page.update(emoji: nil) 
      end
    else
      @emoji = nil
    end
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    @emoji = EmojiService.get_emoji_by_category(@page.emoji_category)
    if @emoji && @emoji['htmlCode'].present?
      @page.emoji = @emoji['htmlCode'][0]
    end

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: "Page was successfully created." }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

    if params[:page][:emoji_category] != @page.emoji_category
      @emoji = EmojiService.get_emoji_by_category(params[:page][:emoji_category])
      @page.emoji = @emoji['character'] if @emoji
    end
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: "Page was successfully updated." }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @page.destroy

    respond_to do |format|
      format.html { redirect_to pages_path, status: :see_other, notice: "Page was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_page
      @page = Page.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:title, :body, :emoji_category)
    end
end
