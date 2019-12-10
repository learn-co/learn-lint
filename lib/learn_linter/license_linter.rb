class LicenseLinter 

  VALID_FILE = File.open(File.expand_path(File.dirname(__FILE__)) + '/valid_license.md')
  VALID_YEARS = ["2015","2016","2017","2018","2019","2020","2021","2022","2023","2024","2025"]

  def self.parse_file(file, learn_error)
    directory_file_array = sanitize_whitespace(File.open(file).read)
    valid_file_array = sanitize_whitespace(VALID_FILE.read)
    diff = directory_file_array - valid_file_array
    
    VALID_YEARS.each do |year| 
      diff.delete(year)
    end

    if diff.empty?
      learn_error.license_error[:valid_license] = true
      learn_error.valid_license = {message: "valid LICENSE.md", color: :green}
    else
      learn_error.license_error[:valid_license] = false
      learn_error.valid_license = {message: "invalid LICENSE.md - Errors: #{diff}", color: :red}
    end
  end

  def self.sanitize_whitespace(file)
    file.split.delete_if {|char| char.empty? || char == "\n"}
  end
end
