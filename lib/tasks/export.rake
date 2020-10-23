require 'pg'
require 'date'

namespace :export do
    desc "launch all export task"
    task datawarehouse: :environment do
        Rake::Task["export:factquote"].invoke
        Rake::Task["export:factcontact"].invoke
        Rake::Task["export:factelevator"].invoke
        Rake::Task["export:dimcustomers"].invoke
        
    end

     # DimCustomers
     desc "export data from mysql database to postgresql table DimCustomers"
     task dimcustomers: :environment do
         table = Customer.all
         conn = PG::Connection.open(dbname: "datawarehouse_development")
 
         conn.exec("TRUNCATE \"dimcustomers\" RESTART IDENTITY")
 
         table.each do |row|
            nb_elevator = 1+rand(50)
             
             # Path to add ramdom date to nil field
             if row.customer_creation_date == nil then
                 Year = 1976+rand(42)
                 Month = 1+rand(11)
                 Day = 1+rand(27)
                 date = Date.new(Year, Month, Day)
                 date = date.strftime("%Y%m%d")
             else
                 date = row.customer_creation_date.strftime("%Y%m%d")
             end
             city = "#{row.company_name.gsub("'", "''")} City"
             conn.exec("INSERT INTO \"dimcustomers\" (\"creation_date\", \"company_name\", \"full_name_of_company_main_contact\", \"email_of_company_main_contact\", \"nb_elevator\", \"contact_city\") VALUES ('#{date}', '#{row.company_name.gsub("'", "''")}', '#{row.full_name_company_contact.gsub("'", "''")}', '#{row.email_company_contact}', #{nb_elevator}, \'#{city}\')")
         end
         conn.finish()
     end 

    # FactContact
    desc "export data from mysql database to postgresql table FactContact"
    task factcontact: :environment do
        table = Lead.all
        conn = PG::Connection.open(dbname: "datawarehouse_development")

        conn.exec("TRUNCATE \"factcontact\" RESTART IDENTITY")

        table.each do |row|

            date = row.created_at.strftime("%Y%m%d")
           
            conn.exec("INSERT INTO \"factcontact\" (\"contact_id\", \"creation_date\", \"company_name\", \"email\", \"project_name\") VALUES (#{row.id}, '#{date}', '#{row.company_name.gsub("'", "''")}', \'#{row.email}\', \'#{row.project_name}\')")
        end
  
        conn.finish()
    end

    # FactQuote
    desc "export data from mysql database to postgresql table FactQuote"
    task factquote: :environment do
        table = Quote.all
        conn = PG::Connection.open(dbname: "datawarehouse_development")

        conn.exec("TRUNCATE \"factquote\" RESTART IDENTITY")

        table.each do |row|

            if row.no_of_elevators == nil then
                row.no_of_elevators = 0
            end


            date = row.created_at.strftime("%Y%m%d")

            conn.exec("INSERT INTO \"factquote\" (\"id\", \"creation\", \"company_name\", \"email\", \"nb_elevator\") VALUES (#{row.id},' #{date}', \'#{row.company_name}\', \'#{row.contact_email}\', \'#{row.no_of_elevators}\')")
        end
        conn.finish()
    end

     # FactElevator
    desc "export data from mysql database to postgresql table FactElevator"
    task factelevator: :environment do
        table = Elevator.all
        conn = PG::Connection.open(dbname: "datawarehouse_development")

        conn.exec("TRUNCATE \"factelevator\" RESTART IDENTITY")

        table.each do |row|
            # Path to add ramdom date to nil field
            if row.commissioning_date == nil then
                Year = 1976+rand(44)
                Month = 1+rand(11)
                Day = 1+rand(27)
                date = Date.new(Year, Month, Day)
                date = date.strftime("%Y%m%d")
            else
                date = row.commissioning_date.strftime("%Y%m%d")
            end

            #city = Building.find(Batterie.find(Column.find(column_ID)[:battery_id])[:building_id])[:address_of_the_building]

            conn.exec("INSERT INTO \"factelevator\" (\"id\",\"serial_number\", \"date_of_commissioning\", \"building_id\", \"customer_id\", \"building_city\") VALUES (#{row.id}, '#{row.serial_number}', '#{date}' , #{-1}, #{-1}, 'city')")
         
        end
        conn.finish()
    end

end

