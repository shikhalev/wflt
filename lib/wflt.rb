# encoding: utf-8

host_config = '/etc/ruby/wflt.rb'
user_config = File.expand_path '~/.config/wflt.rb'
proj_config = File.expand_path '../.wflt.rb'

class WFlt

  VERSION = [0, 1]

  class << self

    def << filter
      @@filters ||= []
      @@filters << filter
    end

  end

  def write line

    if /warning:/ === line
      @@filters ||= []
      if @@filters.any? { |flt| flt === line }
        return nil
      end
    end
    @io.write line
  end

  def method_missing name, *args
    @io.send name, *args
  end

  def initialize io
    @io = io
  end

end

if File.exist? host_config
  load host_config
end
if File.exist? user_config
  load user_config
end
if File.exist? proj_config
  load proj_config
end

$stderr = WFlt.new($stderr)
