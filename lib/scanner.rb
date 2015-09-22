latest_ruby = false

LATEST_RUBY = 'The Gemfile can lock the project to a particular version of Ruby. '\
              ' In general you should prefer the latest, currently 2.2.3'

File.foreach('Gemfile').with_index do |line, line_num|
  # require 'byebug' ; byebug
  latest_ruby ||= !(line =~ /ruby '2\.2\.3'/).nil?
end

puts LATEST_RUBY unless latest_ruby