require 'spreadsheet/workbook'
require 'fileutils'
require 'md5'

module Spreadsheet
  class Workbook

    # shit... don't know what's the better way..
    # how to extract the file content from ole?
    # can u help me?
    def render
      tmp = File.join RAILS_ROOT, "tmp/", MD5::hexdigest(rand.to_s)
      self.write tmp
      IO.read(tmp)
    ensure
      FileUtils.rm tmp if File.exists? tmp
    end

  end
end