require 'rails_helper'

RSpec.describe ProcessMachine, type: :model do
  before do 
    @process_machine = FactoryBot.build(:process_machine)
  end

  describe '工程、設備登録' do
    context '新規登録できるとき' do
      it 'pm_name、pm_abbreviation、pm_colorが存在すれば登録できる' do
        expect(@process_machine).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'pm_nameが空では登録できない' do
        @process_machine.pm_name = ""
        @process_machine.valid?
        expect(@process_machine.errors.full_messages).to include "Pm name can't be blank"      
      end
      it 'pm_abbreviationが空では登録できない' do
        @process_machine.pm_abbreviation = ""
        @process_machine.valid?
        expect(@process_machine.errors.full_messages).to include "Pm abbreviation can't be blank"      
      end
      it 'pm_colorが空では登録できない' do
        @process_machine.pm_color = ""
        @process_machine.valid?
        expect(@process_machine.errors.full_messages).to include "Pm color can't be blank"      
      end
    end
  end
end
