# frozen_string_literal: true

class SurveyMailer < ApplicationMailer
  add_template_helper(EventsHelper)
  def notification(rsvp)
    @rsvp = rsvp
    mail(
      to: rsvp.user.email,
      subject: "How was #{rsvp.event.title}?"
    )
  end
end
