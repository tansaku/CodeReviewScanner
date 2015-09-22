latest_ruby = false
ruby_twilio_included = false

LATEST_RUBY = 'The Gemfile can lock the project to a particular version of Ruby. '\
              ' In general you should prefer the latest, currently 2.2.3'

RUBY_TWILIO = 'Including all the gems you use in your Gemfile is an important courtesy'\
              ' to other developers and yourself in the future, so that all the project'\
              ' dependencies can be pulled in whenever the project is checked out on a'\
              ' new machine, e.g. `twilio-ruby` gem'

File.foreach('Gemfile').with_index do |line, line_num|
  # require 'byebug' ; byebug
  latest_ruby ||= !(line =~ /ruby '2\.2\.3'/).nil?
  ruby_twilio_included ||= !(line =~ /require 'ruby-twilio'/).nil?
end

puts LATEST_RUBY unless latest_ruby
puts RUBY_TWILIO unless ruby_twilio_included