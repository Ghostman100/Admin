class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
  def show
    @room = Room.find(params[:id])
    @users = @room.users
if @room.winners
    w = @room.winners
    @winners = ""
    w.each do |x|
      winer = User.find_by(user_id: x)
      @winners += "#{winer.first_name} #{winer.last_name} #{winer.username}, "
    end
  end
end
end
