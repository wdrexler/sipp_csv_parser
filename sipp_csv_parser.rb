class SippCSVParser
  class << self

    def parse(filename) 
      data = {}
      CSV.foreach(filename, headers: true, col_sep: ";") do |row|
        row.headers.each do |header|
          data[header] ||= []
          data[header] << row[header]
        end
      end

      data
    end

  end
end
