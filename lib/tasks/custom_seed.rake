namespace :db do
  namespace :seed do
    Dir[Rails.root.join('db', 'seeds', '*.rb')].each do |filename|
      task_name = File.basename(filename, '.rb')
      desc "Seed " + task_name + ", based on the file with the same name in `db/seeds/*.rb`"
      task task_name.to_sym => :environment do
        load(filename) if File.exist?(filename)
      end
    end

    namespace :class do
      Dir[Rails.root.join('db', 'seeds', 'class_data', '*.rb')].each do |filename|
        task_name = File.basename(filename, '.rb')
        desc "Seed " + task_name + ", based on the file with the same name in `db/seeds/class_data/*.rb`"
        task task_name.to_sym => :environment do
          load(filename) if File.exist?(filename)
        end
      end
    end

  end
end

namespace :seed do
  desc 'reset database and runs all seed files in sequence'
  task :all do
    Rake::Task['db:reset'].invoke
    Rake::Task['seed:classes'].invoke
    Rake::Task['db:seed:spells'].invoke
    Rake::Task['db:seed:feats'].invoke
    Rake::Task['db:seed:monsters'].invoke
  end

  task :classes do
    Rake::Task['db:seed:class:ranger'].invoke
    Rake::Task['db:seed:class:unchained_rogue'].invoke
  end
end
