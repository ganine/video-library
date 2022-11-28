require 'rails_helper'

RSpec.describe Video, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:category) }

  it 'has a valid factory' do
    expect(build(:video)).to be_valid
  end
end
