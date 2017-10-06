# == Schema Information
#
# Table name: my_emails
#
#  id         :integer          not null, primary key
#  email      :string
#  ip         :string
#  state      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MyEmail < ApplicationRecord
#class MyEmail < ActiveRecord::Base
	validates_presence_of :email, message: "No hay correo en el campo"
	validates_uniqueness_of :email, message: "Correo ya registrado"
	validates_format_of :email, with: Devise::email_regexp
end
