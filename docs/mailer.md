# Action Mailer in Rails

## These are used to send mails in rails and these come pre loaded with rails
**`rails generate mailer Password reset`**

Password is the name of the mailer
reset is the email we want to send out

## User.signed_id
Used for signed version of gloval id that is not human readable and can act as an token for mailer


## User.to_global_id
## User.to_global_id.to_s
## User.signed_id()

## User.signed_id(expires_in: 15.minutes)

## user.signed_id(expires_in: 15.minutes, purpose: "password_reset")
Application on server side would only accept signed id that are for the purpose of password_reset