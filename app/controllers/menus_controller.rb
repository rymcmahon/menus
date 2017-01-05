class MenusController < ApplicationController
  def new
    @menu = Menu.new
    @menu.sections.build
  end
  def create
  end
end
