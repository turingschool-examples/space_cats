require 'rails_helper'

describe Cat, type: :model do
  describe 'validations' do
  it {should validate_presence_of :name}
end

end
