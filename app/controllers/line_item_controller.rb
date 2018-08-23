class LineItemController < ApplicationController

  def show
    @line_items = LineItem.find params[:id]
  end
end