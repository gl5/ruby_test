def callbacks(procs)
  procs[:starting].call

  puts "still going"

  procs[:finishing].call
end

callbacks(:starting => Proc.new {puts "Starting"},
          :finishing => Proc.new {puts "Finishing"})
