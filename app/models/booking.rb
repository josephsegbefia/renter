class Booking < ApplicationRecord
  belongs_to :unit
  belongs_to :user

  attribute :status, :integer, default: 0
  enum status: [:pending, :processing, :failed, :succeed]

  def overlap?(period)
    period = FormatConverters.to_period(period)
    self.start_date <= period.end_date && self.end_date >= period.start_date
  end

  def self.overlap(period)
    period = FormatConverters.to_period(period)

    # lteq = less than or equal to, gteq = greater than or equal to
    # Other methods available on attributes can be found here:
    # https://www.rubydoc.info/gems/arel/Arel/Attributes/Attribute
    where(arel_table[:start_date].lteq(period.end).and(arel_table[:end_date].gteq(period.start)))
  end

  module FormatConverters

    module_function

    def to_period(obj)
      return obj if obj.respond_to?(:start_date) && obj.respond_to?(:end_date)
      obj..obj
    end
  end
end
