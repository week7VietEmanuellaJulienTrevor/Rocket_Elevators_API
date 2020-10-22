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
        table = Quote.all
        conn = PG::Connection.open(host: " ", user: " ", password: " ", dbname: " ")

        conn.exec("TRUNCATE \"FactQuote\" RESTART IDENTITY")

        table.each do |row|
            if row.nb_elevators == nil then
                row.nb_elevators = 0
            end

            date = row.created_at.strftime("%Y%m%d")

            conn.exec("INSERT INTO \"FactQuote\" (\"QuoteId\", \"CreationDate\", \"Business\", \"Email\", \"NbElevator\") VALUES (#{row.id}, '#{date}', \'#{row.business}\', \'#{row.email}\', #{row.nb_elevators})")
        end
        conn.finish()
    end
end
