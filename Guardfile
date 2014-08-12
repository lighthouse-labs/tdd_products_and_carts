# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec, cmd: 'bundle exec rspec' do
  # Run the tests when the code is updated in /lib
  watch(%r{^lib/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
  # Run the test when the test code is updated in /rspec
  watch(%r{^spec/(.+)_spec\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
end
