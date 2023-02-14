require 'spec_helper'
require 'granny'

describe 'Granny' do
  before :each do
    @granny = Granny.new
  end

  it 'must reply to sonny when nothing is said' do
    _(@granny.replies_to('')).must_match 'sit'
  end
  it 'must reply to sonny when BYE is said' do
    _(@granny.replies_to('BYE')).must_match 'flies'
  end
  it 'must reply with some year when ALLCAPS' do
    _(@granny.replies_to('HELLO')).must_match "NOT SINCE "
  end
  it 'must reply with HUH when not yelling' do
    _(@granny.replies_to('hello')).must_match 'HUH'
  end
end


describe 'Integration Testing' do
  include Capybara::DSL
  before :each do
    visit '/'
  end
  it 'must have title of Deaf Granny' do
    _(page).must_have_content 'Deaf'
  end
  it 'must return appropriate page for silence' do
      fill_in 'sonny_says', :with => ''
      click_button 'response'
      _(page).must_have_content "Don't sit there"
  end

  it 'must return appropriate page for BYE' do
      fill_in 'sonny_says', :with => 'BYE'
      click_button 'response'
      _(page).must_have_content "Don't sit there"
  end

  it 'must return appropriate page for HELLO' do
      fill_in 'sonny_says', :with => 'HELLO'
      click_button 'response'
      _(page).must_have_content "NOT SINCE"
  end

  it 'must have stop message for three BYE consecutively' do
      fill_in 'sonny_says', :with => 'BYE'
      click_button 'response'
      _(page).must_have_content "sit there"
      find_link('Click Here').click
      fill_in 'sonny_says', :with => 'BYE'
      click_button 'response'
      _(page).must_have_content "sit there"
      find_link('Click Here').click
      fill_in 'sonny_says', :with => 'BYE'
      click_button 'response'
      _(page).must_have_content "BYE SONNY"
  end
end
