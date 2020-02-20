 class ContributingLinter 

  VALID_FILE = File.open(File.expand_path(File.dirname(__FILE__)) + '/valid_contributing.md')

  def self.parse_file(file, learn_error)
    directory_file = sanitize_whitespace(File.open(file).read)
    valid_file_array = sanitize_whitespace(VALID_FILE.read)
    diff = directory_file - valid_file_array

    if diff.empty?
      learn_error.contributing_error[:valid_contributing] = true
      learn_error.valid_contributing = {message: "valid CONTRIBUTING.md", color: :green}
    else
      learn_error.contributing_error[:valid_contributing] = false
      learn_error.valid_contributing = {message: "invalid CONTRIBUTING.md - Errors: #{diff}", color: :red}
    end
  end

  def self.sanitize_whitespace(file)
    file.split.delete_if {|char| char.empty? || char == "\n"}
  end

end
