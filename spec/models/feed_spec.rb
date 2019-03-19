require 'rails_helper'

RSpec.describe Feed, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:subscriptions) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
