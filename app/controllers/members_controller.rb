class MembersController < ApplicationController
  validates :firstname, length: { maximum: 20}
  validates :lastname, length: { maximum: 20}
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i}

  before_action :authenticate_member!
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to @member
    else
      render :new
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])

    if @member.update(member_params)
      redirect_to @member
    else
      render :edit
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy

    redirect_to members_index_path
  end

  private
  def member_params
    params.require(:member).permit(:email, :firstname, :lastname)
  end
end
