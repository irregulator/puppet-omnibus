#!/usr/bin/env ruby

module Docker
  DOCKER_DIRECTIVES=%w{
    from run volume add copy maintainer cmd expose env entrypoint user
    workdir onbuild }
  DOCKER_DIRECTIVES.each do |dir|
    define_method(dir) { |content| puts "#{dir.upcase} #{content}" }
  end

  # special case:
  # strip lines in single run block and join them together
  def run(command, separator = ';')
    puts "RUN " << command.lines.to_a.map(&:strip).
                           reject{|s| s==''}.join(" #{separator} ")
  end

  def method_missing(method, *args)
    case method.to_s
    when /^env_(\w+)/
      ENV[$1.upcase]
    else
      puts method
    end
  end
end
