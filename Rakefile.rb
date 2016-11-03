task :test_all do
  sh 'cucumber features'
end

task :default => :test_all

task :test_smoke do
  sh 'cucumber --tags @smoke'
end

task :test_registration do
  sh 'cucumber --tags @registration'
end

task  :test_project => :test_registration do
  sh 'cucumber --tags @project'
end

