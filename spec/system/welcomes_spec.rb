require 'rails_helper'

RSpec.describe "Welcomes", type: :system, js:true do

  it "ルートページが表示できること" do
    # root_urlだとうまくいかない
    # https://github.com/rspec/rspec-rails/issues/2327
    visit root_path
    expect(page).to have_content 'イベント一覧'
  end
end
