require 'pry'

class MP3Importer

    attr_accessor :filename, :path

    def initialize(path)
        @path = path
    end

    def files
        @files ||= Dir.glob("#{path}/*.mp3").map { |file| file.gsub("#{path}/", "") }
        # binding.pry
    end

    def import
        self.files.each { |file| Song.new_by_filename(file) }
    end

end