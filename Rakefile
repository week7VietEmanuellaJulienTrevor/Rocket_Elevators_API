# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

desc 'exporttest'
task :exporttest => :environment do

    puts "\n--------rake task start--------\n"
    conn = PG::Connection.open(dbname: "datawarehouse_development")
    #conn = PG::Connection.open(host: "codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com", user: "codeboxx", password: "Codeboxx1!", dbname: "pg_Trevor_Kitchen_team2")
    conn.exec("TRUNCATE \"factinterventions\" RESTART IDENTITY")
    
    building_count = Building.count
    not_technician_count = Employee.where.not(title: 'technician').count
    employee_count = Employee.count
    battery_count = Battery.count

    table = Battery.all


    10.times do
        battery_id_rand = rand(1..battery_count)
        battery = table.where(id: battery_id_rand)
        building_id = table.find(battery_id_rand).building_id
        employee_id = table.find(battery_id_rand).employee_id
        

        puts battery_id_rand
        puts "---------------------------------------------------------------------"
        puts building_id
        puts "---------------------------------------------------------------------"
        puts employee_id
        puts "\n--------rake task end--------\n"
        conn.exec("INSERT INTO \"factinterventions\" (\"employee_id\", \"building_id\", \"battery_id\" ) VALUES ('#{employee_id}', '#{building_id}', '#{battery_id_rand}')")
    end
    conn.finish()
    
end