require_relative 'spec_helper'

describe "Reservation Test" do
  describe "initialize" do
    it "has a check_in date & check_out date formated as Dates" do
      new_Res = Reservation.new("2018-09-05","2018-09-07",1)
      expect(new_Res.check_in).must_be_kind_of Date
      expect(new_Res.check_out).must_be_kind_of Date
    end
    it "raises an Argument Error when an invalid date is entered in either check_in or check_out" do
      expect{Reservation.new("2018-09-05","2018-09-31",1)}.must_raise ArgumentError
      expect{Reservation.new("2018-09-31","2018-10-01",1)}.must_raise ArgumentError
    end
    it "raises an Argument Error when an invalid room number is inserted" do
      expect{Reservation.new("2018-09-05","2018-09-07",23)}.must_raise ArgumentError
    end
  end
end
