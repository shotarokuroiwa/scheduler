class Schedule < ApplicationRecord
    validates :title, presence: true, length: { maximum: 20 }
    validates :start_at, presence: true
    validates :end_at, presence: true
    validates :memo, length: { maximum: 500 }

    validate :end_after_start

    private

    def end_after_start
        return if start_at.blank? || end_at.blank?
        if end_at < start_at
            errors.add(:end_at, "は開始日以降にしてください")
        end
    end
end
