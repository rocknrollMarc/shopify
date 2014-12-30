require 'rails_helper'

RSpec.describe Contest, :type => :model do
  it 'is invalid without a name' do
    contest = build(:contest, name: nil)
    contest.valid?
    expect(contest.errors[:name]).to include("can't be blank")
  end
end
