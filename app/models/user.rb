class User < ActiveRecord::Base

  has_many :microposts

  def self.to_csv
    CSV.generate do |csv|
      csv << ["ID", "Name", "Email", "CreatedAt", "UpdatedAt"]
      all.each do |emp|
        csv << [emp.id, emp.name, emp.email, emp.created_at, emp.updated_at ]
      end
    end
  end


end
