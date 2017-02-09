require 'pry'

After do |scenario|
  $end_time = Time.now
  binding.pry
end

Before do
  $start_time = Time.now
end
