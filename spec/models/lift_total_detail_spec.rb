require 'rails_helper'

RSpec.describe LiftTotalDetail, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:lift_total) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
