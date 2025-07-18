require 'yaml'
require_relative 'entry'

class Journal
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry
    print 'Title: '
    title = gets.chomp
    print 'Body: '
    body = gets.chomp
    entries << JournalEntry.new(title, body)
    puts 'Entry saved!'
  end

  def view_entries
    puts "\nJournal Entries:"
    if entries.empty?
      puts 'No entries yet.'
    else
      entries.each_with_index do |entry, index|
        puts "Entry #{ index + 1 }: #{entry.title} (#{entry.created_at.strftime('%Y-%m-%d %H:%M')})"
        puts "#{entry.body}"
      end
    end
  end

  def save_to_file(filename = 'journal.yml')
    File.open(filename, 'w'){ |file| file.write(YAML.dump(self)) }
    puts "Journal saved to #{filename}"
  end

  def self.load_from_file(filename = 'journal.yml')
    if File.exist?(filename)
      YAML.load_file(filename, permitted_classes: [JournalEntry])
    else
      nil
    end
  end
end