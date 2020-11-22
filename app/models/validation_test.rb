class ValidationTest < ApplicationRecord
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/	
	validates:userName,
		presence: true,	
		uniqueness:true
	validates:age,
		presence: true,
		length:{in: 1 .. 2}
	validates:postNum,
		format:{with:/\A\d{3}[-]\d{4}\z/}
	validates:mailaddress,
		format:{with:VALID_EMAIL_REGEX}
end
