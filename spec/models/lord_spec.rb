require 'rails_helper'
require 'spec_helper'

RSpec.describe Lord, type: :model do
  before do
    @unit1  = FactoryGirl.create(:unit, name: 'fighter')
    @unit2  = FactoryGirl.create(:unit, name: 'rouge')
    @unit3  = FactoryGirl.create(:unit, name: 'mage', str: 3)
    @unit_enemy  = FactoryGirl.create(:unit, name: 'goblin', str: 3, endr: 4)
    
    @stuff =  FactoryGirl.create(:stuff)
    @lord  =  FactoryGirl.create(:lord)
    @enemy =  FactoryGirl.create(:lord, name: 'Upyr', hp: 10)
  end
  
  subject { @lord }
  
  describe "when Lord has correct name" do
    #@lord. = @unit
   it { expect(@lord.name).to eq 'Stark' } 
  end
  
  describe "when Lord and Unit connected" do
   
    before do
     @lord.units << @unit1
     @lord.units << @unit2
     @lord.units << @unit3
     @lord.stuffs << @stuff
     
     @enemy.units <<  @unit_enemy
     
    end
    it { expect(@lord.units[0].name).to eq 'fighter' } 
    it { expect((@lord.units.map { |x| x.str }).sum).to eq 13 }  
    it { expect((@lord.stuffs.map { |x| x.str }).sum).to eq 2 } 
    it { expect((@enemy.units.map { |x| x.endr }).sum).to eq 4 }
  
  
  describe "when Lord melee attack" do
    #@lord. = @unit
   before { @lord.melee_attack(@enemy) }
   it { expect(@lord.melee_attack(@enemy)).to be_an Integer  } 
   it { expect(@enemy.hp).to eq 1 } 
  end
  end
end
