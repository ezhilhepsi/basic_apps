class FriendMailer < ApplicationMailer
	  default from: "from@n.ezhilhepsi@gmail.com"

  def sample_email(friend)
    @friend = friend
    mail(to: @friend.email, subject: 'Sample Email')
  end
end
