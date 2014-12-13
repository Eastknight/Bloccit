class FavoriteMailer < ActionMailer::Base
  default from: "lei.chen.scu@gmail.com"

   def new_comment(user, post, comment)
 
     # New Headers
     headers["Message-ID"] = "<comments/#{comment.id}@bloccit.example>"
     headers["In-Reply-To"] = "<post/#{post.id}@bloccit.example>"
     headers["References"] = "<post/#{post.id}@bloccit.example>"
 
     @user = user
     @post = post
     @comment = comment
 
     mail(to: user.email, subject: "New comment on #{post.title}")
   end
end
