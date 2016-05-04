class GovOfficial < ActiveRecord::Base

	validates :name, :about, :party, :branch, presence: true
	validates :about, length: { minimum: 15 }

	PARTY = %w(D R I)
	BRANCHES = %w(Senate Representative Executive Judicial)

	validates :party, inclusion: { in: PARTY }
	validates :branch, inclusion: { in: BRANCHES }
end
