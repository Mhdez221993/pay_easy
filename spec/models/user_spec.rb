require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validates' do
    let(:params) do
      { name: 'John', email: 'john@example.com', password: 'password', password_confirmation: 'passowrd' }
    end
    subject { User.new(params) }

    it 'should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should not have an empty name' do
      subject.name = ' '
      expect(subject).to_not be_valid
    end

    it 'should have name not longer than 100 chars' do
      subject.name = 'a' * 101
      expect(subject).to_not be_valid
    end

    it 'should have an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end
end
