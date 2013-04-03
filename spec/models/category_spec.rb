require 'spec_helper.rb'
describe Category do
  it { should have_many(:posts)}
  it { should validate_uniqueness_of(:name)}
  it { should ensure_length_of(:name).
                      is_at_least(3)}
end
