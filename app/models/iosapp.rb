class Iosapp < ActiveRecord::Base
    validates_presence_of :app_id, :version
    validates_format_of :app_id, :with => /\A[A-Za-z0-9]*\Z/i
    validates_format_of :version, :with => /\A[0-9]+\.([0-9]{1,})+?\Z/i
end
