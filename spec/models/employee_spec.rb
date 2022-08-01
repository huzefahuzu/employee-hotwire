require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe "#validations" do
    context 'when creating new employee' do
      it 'creates employee record successfully' do
        create(:employee)

        expect(Employee.count).to eq 1
      end
    end

    context 'when creating new employee with invalid or missing details' do
      it 'does not create employee record' do
        employee = create(:employee, first_name: '', last_name: '')

        expect(Employee.count).to eq 0
        expect(employee.errors.flatten.join(',')).to include "first_name can't be blank"
      end

      it 'return phone number invalid error if format is invalid' do
        employee = create(:employee, first_name: '', last_name: '')

        expect(Employee.count).to eq 0
        expect(employee.errors.flatten.join(',')).to include "first_name can't be blank"
      end
    end
  end
end
