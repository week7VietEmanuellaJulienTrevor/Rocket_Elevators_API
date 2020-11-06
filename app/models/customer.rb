class Customer < ApplicationRecord
    belongs_to :admin_user
    after_create :dropbox
    after_update :dropbox

   # belongs_to :user, optional:true

    has_many :buildings
    def display_name
        "#{company_name}"
    end

    belongs_to :address
    belongs_to :employee
    
    # has_many :quotes, through: :admin_users
    has_many :batteries
    def display_name
        "#{company_name}"
    end

    has_many :columns
    def display_name
        "#{company_name}"
    end

    has_many :elevators
    def display_name
        "#{company_name}"
    end

    has_many :building_details
    def display_name
        "#{company_name}"
    end

    def dropbox
<<<<<<< HEAD
        cus_leads = Lead.where(contact_full_name: self.id)

        client = DropboxApi::Client.new ENV["access_token"]
        
         cus_leads.each do |l|
=======
        customer_leads = Lead.where(company_name: self.company_name)
        puts "-------------------------------------------------------"
        pp customer_leads
        puts customer_leads.count
        puts "-------------------------------------------------------"


        client = DropboxApi::Client.new ENV["access_token"]
        
         customer_leads.each do |l|
          puts "-------------------------------------------------------"
          puts l.attached_file

          puts "-------------------------------------------------------"

>>>>>>> downgraded
          begin
            client.get_metadata("/#{l.company_name}") 
            puts "-------------------------------------------------------"
            puts "get metadata"
            puts "-------------------------------------------------------"

          rescue => exception
          
            client.create_folder("/#{l.company_name}")
            puts "-------------------------------------------------------"
            puts "create folder."
            puts "-------------------------------------------------------"
        end
          #Transfer the binary file to Dropbox
          if l.attached_file != nil
            begin

              client.get_metadata("/#{l.company_name}")
              puts "-------------------------------------------------------"
              puts "before exception"
              puts "-------------------------------------------------------"
            #rescue => exception
              puts "-------------------------------------------------------"
              puts "uploading"
              puts "-------------------------------------------------------"   
              
              
              file_content = IO.read l.attached_file_path

              puts "-------------------------------------------------------"
              pp file_content
              puts "-------------------------------------------------------"  

              client.upload("/#{l.company_name}/file.png",file_content)


          end
          #Remove the attached file from lead table after success transfert to dropbox
          removed = ""
          # l.update_attribute(:attached_file, removed)
          # l.update_attribute(:attached_file, removed)

      end
    end
  end
   

end


