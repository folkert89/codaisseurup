require 'rails_helper'

describe "Viewing an individual event" do
  # before { login_as user }
  #
  # let(:user) { create :user, email: "current@user.com" }
  # DEZE DINGEN HOEVEN NIET OMDAT IN DE CONTROLLER WORD AANGEGEVEN DAT JE BIJ DE SHOW ROUTE NIET HOEFT TE AUTHENTICATEN. ROUTES VERWIJST NAAR Event
  # let(:event) { create :event, user: user }
  let(:event) { create :event}
  it "shows the event's details" do
    visit event_url(event)

    expect(page).to have_text(event.name)
    expect(page).to have_text(event.description)
    #expect(page).to have_text(event.price)
    # expect(page).to have_text(event.capacity)
    # expect(page).to have_text(event.includes_food)
    # expect(page).to have_text(event.includes_drinks)
    # expect(page).to have_text(event.starts_at)
  end
end
