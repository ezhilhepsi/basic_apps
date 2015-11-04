# Preview all emails at http://localhost:3000/rails/mailers/friend_mailer
class FriendMailerPreview < ActionMailer::Preview
def sample_mail_preview
    FriendMailer.sample_email(Friend.first)
  end
end
