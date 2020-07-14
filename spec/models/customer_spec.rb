require 'rails_helper'

RSpec.describe Customer, type: :model do
  let(:valid_attributes) { { name: 'alan peter' } }
  subject { Customer.new(valid_attributes) }

  context 'relationships' do
    it { is_expected.to have_many :carts }
  end

  context 'name' do
    it 'capitalize' do
      expect(subject.titleize_name).to eql 'Alan Peter'
    end
  end

end
