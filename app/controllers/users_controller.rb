# encoding: utf-8
class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  # before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => :destroy

  def index
    @users = User.order("name").paginate(:page => params[:page]).per_page(20)
    @title = "用户"
  end

  def show
    # raise request.inspect
    @user  = User.find(params[:id])
    @title = @user.name
    @userlist = User.all
    @usertype = get_dict_by_type("userType")
    # @user.usrrels.build unless !@user.usrrels.empty?
    # if @user.usrrels.empty?
    #   @usrrels = Usrrel.new
    # else
    #   @usrrels = @user.usrrels.first
    # end
  end

  def new
    @user  = User.new
    @title = "注册"
    @usertype = get_dict_by_type("userType")
  end
  
  def create
    # raise params[:user].inspect
    @user = User.new(params[:user])
    if @user.save
      Usrrel.underling!(@user)
      sign_in @user
      redirect_to @user, :flash => { :success => "注册成功"}
    else  
      @title = "注册"
      render 'new'
    end
  end

  def edit
    # raise request.inspect
    @user  = User.find(params[:id])
    @title = "用户设置"
    @userpositions = Userposition.all
    @usertype = get_dict_by_type("userType")
  end
  
  def update
    @user  = User.find(params[:id])
    @underlings = params[:user][:underling_ids]
    if @underlings.present?
      if @user.update_attribute :underling_ids, params[:user][:underling_ids]
        redirect_to @user, :flash => { :success => "用户资料更新成功" }
      else
        @title = "用户设置"
        render 'edit'
      end
    else
      if @user.update_attributes(params[:user])
        redirect_to @user, :flash => { :success => "用户资料更新成功" }
      else
        @title = "用户设置"
        render 'edit'
      end
    end
  end
    
  def destroy
    # User.find(params[:id]).destroy
    @user.destroy
    # flash[:success] = "用户已删除"
    redirect_to users_path, :flash => { :success => "用户已删除" }
  end
  
  private 
  
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
    
    def admin_user
      @user = User.find(params[:id])
      redirect_to(root_path) if !current_user.admin? || current_user?(@user)
    end
end
