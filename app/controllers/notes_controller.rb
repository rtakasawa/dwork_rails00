class NotesController < ApplicationController
  before_action :set_note, only: [:edit, :update, :destroy]
  def index
    @notes = Note.all
  end
  def new
    @note = Note.new
  end
  def create
    @note = Note.new(note_params)
    if params[:back]
      render :new
    else
      if @note.save
        redirect_to notes_path, notice: "ブログを作成しました！"
      else
        render :new
      end
    end
  end
  def edit
  end
  def update
    if @note.update(note_params)
      redirect_to notes_path, notice: "投稿内容を編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @note.destroy
    redirect_to notes_path, notice:"投稿を削除しました！"
  end
  def confirm
    @note = Note.new(note_params)
    render :new if @note.invalid?
  end
  private
  def note_params
    params.require(:note).permit(:content)
  end
  def set_note
    @note = Note.find(params[:id])
  end
end
