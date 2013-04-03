require 'spec_helper.rb'

describe Post do
  it {should belong_to(:category)}
  it { should validate_presence_of(:content)}
  it { should validate_presence_of(:title)}
  it { should ensure_length_of(:title).
                        is_at_least(4)}
  it { should ensure_length_of(:content).
                        is_at_least(50)}
  it { should validate_presence_of(:category_id)}
  it { should validate_presence_of(:secret_url)}
  it { should validate_uniqueness_of(:secret_url)}

end
