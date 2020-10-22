require 'pg'
require 'date'

namespace :export do
    desc "launch all export task"
    task datawarehouse: :environment do
        Rake::Task["export:factquote"].invoke
        #Rake::Task["export:factcontact"].invoke
        #Rake::Task["export:factelevator"].invoke
        #Rake::Task["export:dimcustomers"].invoke
        
    end

    # FactQuote
    desc "export data from mysql database to postgresql table FactQuote"
    task factquote: :environment do
        table = quotes.all
        conn = PG::Connection.open(dbname: "datawarehouse_development")

        conn.exec("TRUNCATE \"factquote\" RESTART IDENTITY")

        table.each do |row|
            if row.nb_elevator == nil then
                row.nb_elevator = 0
            end

            date = row.created_at.strftime("%Y%m%d")

            conn.exec("INSERT INTO \"factquote\" (\"quote_id\", \"creation_date\", \"company_name\", \"email\", \"nb_elevator\") VALUES (#{row.id}, '#{date}', \'#{row.company_name}\', \'#{row.email}\', #{row.no_of_elevators})")
        end
        conn.finish()
    end
end
