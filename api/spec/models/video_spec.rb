require 'rails_helper'

RSpec.describe Video, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:category) }

  it { is_expected.to validate_attached_of(:file) }
  it { is_expected.to validate_content_type_of(:file).allowing('video/mp4', 'video/mov') }
  it { is_expected.to validate_size_of(:file).less_than(200.megabytes) }

  it 'has a valid factory' do
    expect(build(:video)).to be_valid
  end
end
