require_relative 'journal'

def run
  journal = File.exist?('journal.yml') ? Journal.load_from_file : Journal.new

  loop do
    puts "\n📓 Journal Menu:"
    puts '1. Add Entry'
    puts '2. View Entries'
    puts '3. Save'
    puts '4. Exit'
    print 'Choose and option: '
    choice = gets.chomp

    case choice
    when '1' then journal.add_entry
    when '2' then journal.view_entries
    when '3' then journal.save_to_file
    when '4'
      puts 'Goodbye!'
      break
    else
      puts 'Invalid option.'
    end
  end
end

run