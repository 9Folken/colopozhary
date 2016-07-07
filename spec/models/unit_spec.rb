require 'rails_helper'
require 'spec_helper'

describe Unit do

  before do
     #@unit = Unit.create(name: "unit")
     #let(@unit) { FactoryGirl.create(:unit) }
     @unit = FactoryGirl.create(:unit)
  end

  subject { @unit }

  it { should respond_to(:name) }

  
  describe "when Unit has correct name" do
    #@lord. = @unit
    it { expect(@unit.name).to eq 'unit' } 
    it { expect(@unit.str).to eq 5 }
  end
  
  
  

end
