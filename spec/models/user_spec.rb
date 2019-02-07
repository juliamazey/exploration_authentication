require 'rails_helper'

RSpec.describe User do

  describe 'validations' do
    xit {should validate_presence_of :name}
    xit {should validate_uniqueness_of :name}
    xit {should validate_presence_of :email}
    xit {should validate_presence_of :password}
  end
end
