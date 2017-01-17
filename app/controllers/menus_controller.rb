class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def update
    @menu = Menu.find(params[:id])

    if @menu.update(menu_params)
      redirect_to @menu
    else
      render 'edit'
    end
  end

  private

  def menu_params
    params.require(:menu).permit(:name, sections_attributes: [:id, :name, :_destroy, items_attributes: [:id, :name, :description, :price, :available, :_destroy]])
  end
end
