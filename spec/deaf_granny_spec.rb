require 'spec_helper'
require 'granny'

describe Granny do
  before :each do
    @granny = Granny.new
  end
  
  it 'must reply to sonny when nothing is said' do
    @granny.replies_to('').must_match 'sit'
  end
  it 'must reply to sonny when BYE is said' do
    @granny.replies_to('BYE').must_match 'flies'
  end
  it 'must reply with some year when ALLCAPS' do
    @granny.replies_to('HELLO').must_match 'NOT'
  end
  it 'must reply with HUH when not yelling' do
    @granny.replies_to('hello').must_match 'HUH'
  end
end
