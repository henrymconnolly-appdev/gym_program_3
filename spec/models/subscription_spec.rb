require 'rails_helper'

RSpec.describe Subscription, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:feed) }

    it { should belong_to(:profile) }

    end

    describe "InDirect Associations" do

    it { should have_one(:lift_total) }

    end

    describe "Validations" do
      
    end
end
