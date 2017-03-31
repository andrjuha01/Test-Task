# Seed test database immediately on load
namespace :db do
  namespace :test do
    task :load => :environment do
      ActiveRecord::Base.establish_connection(ActiveRecord::Base.c‌​onfigurations['test'‌​])
      Rake::Task["db:seed"].invoke
    end
  end
end
