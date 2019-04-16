class Sysemail < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sysemail.sent.subject
  #
  def sent(user,sent_at=Time.now)
    subject "激活邮件，来自【购书网】"
    recipients user.email
    from  "somboy@foxmail.com"
    sent_on sent_at
    body :user=>user
    content_type "text/html"
  end
#  def sent(sent_at=Time.now)
#    subject "Sysemail#sent"
#recipients ""
#    form ""
#    sent_on sent_at
#    body  :greeting=>"hi,"
#  end
end
