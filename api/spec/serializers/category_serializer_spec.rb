require 'rails_helper'

RSpec.describe CategorySerializer, :type => :serializer do

  let(:category) { create(:category) }

  describe '#as_json' do
    subject { CategorySerializer.new(category).as_json }

    it { is_expected.to have_key(:id) }
    it { is_expected.to have_key(:name) }
  end
end