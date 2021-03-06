# frozen_string_literal: true

module Devise
  class MailerPreview < ActionMailer::Preview
    def confirmation_instructions
      Devise::Mailer.confirmation_instructions(User.first, {})
    end

    def reset_password_instructions
      Devise::Mailer.reset_password_instructions(User.first, {})
    end
  end
end
