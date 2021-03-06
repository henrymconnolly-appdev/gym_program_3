require 'rails_helper'

RSpec.describe LiftTotal, type: :model do
  
    describe "Direct Associations" do

    it { should have_one(:lift_total_detail) }

    it { should belong_to(:profile) }

    end

    describe "InDirect Associations" do

    it { should have_one(:subscription) }

    end

    describe "Validations" do
      
    end
end
