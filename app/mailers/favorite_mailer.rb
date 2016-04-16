class FavoriteMailer < ApplicationMailer
  default from: "m.jauregui17@gmail.com"

  def new_comment(user, post, comment)

     headers["Message-ID"] = "<comments/#{comment.id}@your-app-name.example>"
     headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
     headers["References"] = "<post/#{post.id}@your-app-name.example>"

     @user = user
     @post = post
     @comment = comment

     mail(to: user.email, bcc: "richard@bloc.io", subject: "New comment on #{post.title}")
   end
end
