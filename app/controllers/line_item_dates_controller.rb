class LineItemDatesController < ApplicationController
  before_action :set_quote
  before_action :set_line_item_date, only: [ :edit, :update, :destroy ]

  def new
    @line_item_date = @quote.line_item_dates.build
  end

  def edit
  end

  def create
    @line_item_date = @quote.line_item_dates.build(line_item_date_params)

    if @line_item_date.save
      redirect_to quote_path(@quote), notice: "Line item date was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  def update
    if @line_item_date.update(line_item_date_params)
      redirect_to quote_path(@quote), notice: "Date was successfully updated."
    else
      render :edit, status: :unprocessable_content
    end
  end

  def destroy
    @line_item_date.destroy

    redirect_to quote_path(@quote), notice: "Date was successfully destroyed."
  end

  private

  def line_item_date_params
    params.expect(line_item_date: [ :date ])
  end

  def set_line_item_date
    @line_item_date = @quote.line_item_dates.find(params[:id])
  end

  def set_quote
    @quote = current_company.quotes.find(params[:quote_id])
  end
end
