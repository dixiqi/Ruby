class MealCardsController < ApplicationController
  # GET /meal_cards
  # GET /meal_cards.xml
  def index
    @meal_cards = MealCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @meal_cards }
    end
  end

  # GET /meal_cards/1
  # GET /meal_cards/1.xml
  def show
    @meal_card = MealCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meal_card }
    end
  end

  # GET /meal_cards/new
  # GET /meal_cards/new.xml
  def new
    @meal_card = MealCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @meal_card }
    end
  end

  # GET /meal_cards/1/edit
  def edit
    @meal_card = MealCard.find(params[:id])
  end

  # POST /meal_cards
  # POST /meal_cards.xml
  def create
    @meal_card = MealCard.new(params[:meal_card])

    respond_to do |format|
      if @meal_card.save
        format.html { redirect_to(@meal_card, :notice => 'Meal card was successfully created.') }
        format.xml  { render :xml => @meal_card, :status => :created, :location => @meal_card }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meal_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meal_cards/1
  # PUT /meal_cards/1.xml
  def update
    @meal_card = MealCard.find(params[:id])

    respond_to do |format|
      if @meal_card.update_attributes(params[:meal_card])
        format.html { redirect_to(@meal_card, :notice => 'Meal card was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meal_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_cards/1
  # DELETE /meal_cards/1.xml
  def destroy
    @meal_card = MealCard.find(params[:id])
    @meal_card.destroy

    respond_to do |format|
      format.html { redirect_to(meal_cards_url) }
      format.xml  { head :ok }
    end
  end
end
