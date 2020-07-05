require 'rails_helper'

RSpec.describe Pet do
  describe 'validations' do
    it { should_validate_presence_of :name }
    it { should_validate_presence_of :description }
    it { should_validate_presence_of :age }
    it { should_validate_presence_of :sex }
  end
  
  describe 'relationships' do
    it { should belong_to :shelter }
  end
end
