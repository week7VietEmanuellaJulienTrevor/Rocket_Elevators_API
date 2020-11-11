# save stats database settings in global var
file = File.read(Rails.root.join("config","database_second.yml"))
p YAML::load(file)
DB_SECOND = YAML::load(file)[Rails.env]

#cd d( ERB.new( File.read("#{ Rails.root }/config/database_second.yml") ).result )[Rails.env.to_s]

# config =YAML::load(ERB.new(File.read(Rails.root.join("config","database_second.yml"))).result)
# DB_SECOND = config[Rails.env].