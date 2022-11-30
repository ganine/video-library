require 'rails_helper'

RSpec.describe Category, type: :model do
  it { is_expected.to have_many(:videos) }

  it { is_expected.to validate_presence_of(:name) }

  it 'has a valid factory' do
    expect(build(:category)).to be_valid
  end
end
