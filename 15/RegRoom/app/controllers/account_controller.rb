  class AccountController < ApplicationController
    def register
    end

  def login
  end

  def proReg
    @user=User.new(params[:user])
    @user.active_code=rand(Time.now.to_i).to_s
    @user.is_actived=0
    if @user.save then
      flash[:notice]="success"
      flash[:name]=@user.name
      Sysemail.deliver_sent(@user)
      render "Sysemail/sent"
    else
      flash[:notice]="fail"
      render :action=>"account/register"
    end
  end

    def proActivate
      user=User.find_by_name(params[:name])
      if user!=nil && user.is_actived==0 && user.active_code==params[:active_code] then
        user.update_attribute(:is_actived,1)
        flash[:notice]="恭喜你，您已经成功激活您的账户"
      elsif user!=nil && user.is_actived==1 then
        flash[:notice]="您已经激活了您的账户"
      else
        flash[:notice]="激活失败"
      end
      redirect_to :action=> "active"
    end
      def active
      end

end
