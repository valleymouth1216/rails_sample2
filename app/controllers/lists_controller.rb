class ListsController < ApplicationController
  def new
    @list = List.new
    #新しいオブジェクト作成Listモデルに存在するtitleとBodyを格納
    #モデルなどの処理はViewではなくコントローラーに記述する
    #インスタンス変数はビューで表示するときに必要
  end

  def create
    list = List.new(list_params) #()の引数を入れてtitleとBodyを格納
    list.save　　　　　　　　　　#保存する
    redirect_to top_path         #保存出来たらリダイレクトする
  end

  def index
    @lists = List.all #全てデータを取得する.全てだからインスタンス変数は複数形。
  end

  def show
    @list = List.find(params[:id])
    #詳細画面つまりデータは各データ一つしかいらない
    #保存されているデータを読み込む
  end

  def edit
    @list = List.find(params[:id])
  end

  private #コントローラ内でしか呼出せない

  def list_params
    params.require(:list).permit(:title,:body)
    #保存するデータの絞りこみ
  end
end
