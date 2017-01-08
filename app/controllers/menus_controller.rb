class MenusController < ApplicationController
  def new
    @menu = Menu.new
    @menu.sections.build
  end
  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  private
  def menu_params
    params.require(:menu).permit(:name, sections_attributes: [:id, :name, :_destroy])
  end
end
