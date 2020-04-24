# frozen_string_literal: true

require 'rails_helper'

describe 'PageViews' do
  it 'shows the number ofpage views', type: :system do
    visit '/welcome/index'
    expect(page.text).to match(%r{Find me in app/views/welcome/index.html.erb})
  end
end
