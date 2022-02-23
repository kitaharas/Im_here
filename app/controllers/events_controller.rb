class EventsController < ApplicationController

  before_action :login_check,{only:[:show, :edit, :destroy]}

  def search
    pub_events = Event.where(publish: true)
    @events = pub_events.search(params[:search])
  end

  def scheduling
    @event = Event.find(params[:id])
    @scheduling = Schedule.where(event_id: @event.id).pluck(:user_id)
    @schedules = User.find(@scheduling)
  end


  def genre
    @genre = Genre.all
  end

  def feel
    @feel = Feel.all
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      respond_to do |format|
        format.json { render json: {message: "success", id:@event.id } }
      end
    else
      respond_to do |format|
        format.json { render json: {error: @event.errors.full_messages} }
      end
    end

  end

  def show
    
    @event = Event.find(params[:id])
    @scheduling = Schedule.where(event_id: @event.id).pluck(:user_id)
    @scheduling_users = User.find(@scheduling)
    @user = User.find(@event.user.id)
    @user_events = Event.where(user_id: @user.id)

    if @notifications_schedule.where(visitor_id: @user.id)
      @notifications_schedule.update_all(checked: true)
    end
  
  end

  def edit
    # redirect_to root_path unless current_user.id == @user.id
    @event = Event.find(params[:id])
  end

  def update
    # redirect_to root_path unless current_user.id == @user.id
    @event = Event.find(params[:id])
    if @event.update(update_params)
    redirect_to eventpage_path
    else
    render("events/edit")
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to mypage_path(id: current_user.id)
  end


  private
    def event_params
      params.permit(:event_title,:genre_id,:feel_id,:date,:content,:place,:people)
    end

    def update_params
      params.fetch(:event,{}).permit(:event_image_name,:content,:event_title,:publish,:place,:people,:date)
    end

end

