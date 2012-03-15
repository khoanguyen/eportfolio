Sequel::Model.plugin(:schema)
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.strict_param_setting = false # Do not throw exceptions on mass assignment failure
Sequel::Model.db = case Padrino.env
  when :development then Sequel.connect("mysql2://root:@localhost/eportfolio_development", :loggers => [logger])
  when :production  then Sequel.connect("mysql2://root:@localhost/eportfolio_production",  :loggers => [logger])
  when :test        then Sequel.connect("mysql2://root:@localhost/eportfolio_test",        :loggers => [logger])
end
