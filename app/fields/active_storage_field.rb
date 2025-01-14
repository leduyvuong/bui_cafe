require "administrate/field/base"

class ActiveStorageField < Administrate::Field::Base
  def to_s
    if data.respond_to?(:attached?) && data.attached?
      if data.respond_to?(:each) # Multiple attachments
        data.map { |attachment| attachment.filename.to_s }.join(", ")
      else # Single attachment
        data.filename.to_s
      end
    else
      ""
    end
  end
end
