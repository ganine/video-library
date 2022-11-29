require 'rails_helper'

RSpec.describe VideoSerializer, :type => :serializer do

  let(:video) { create(:video) }

  describe '#as_json' do
    subject { VideoSerializer.new(video).as_json }

    it { is_expected.to have_key(:id) }
    it { is_expected.to have_key(:title) }
    it { is_expected.to have_key(:category) }
    it { is_expected.to have_key(:file) }
  end
end