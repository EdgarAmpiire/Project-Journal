# 📓 Ruby Journal App

A simple **command-line Journal application** built with Ruby. This personal project helps reinforce core programming skills including:

- File I/O
- Object-Oriented Programming
- YAML serialization for saving and loading data
- Command-line interface design

---

## 🧠 Features

- ✍️ Add journal entries with a title and body
- 📖 View previously saved entries
- 💾 Save entries to a `.yml` file
- 📂 Load entries from an existing file
- 🕓 Timestamps for each entry
- 🧠 Optional extension ideas included

---

## 📁 Project Structure

``` bash
journal_app/
├── entry.rb # JournalEntry class – stores individual journal entries
├── journal.rb # Journal class – handles logic for storing and managing entries
├── main.rb # CLI script – user interaction and main loop
└── journal.yml # Auto-generated file to save journal data
```


## ▶️ How to Run

1. Make sure Ruby is installed:
   ```bash
   ruby -v
   ```
2. Clone or download this repository.

3. Run the app:
```bash
ruby main.rb
```

## 🖥️ Menu Preview
```markdown
📓 Journal Menu
1. Add Entry
2. View Entries
3. Save
4. Exit
```

### 💾 How Saving Works
- Journal entries are stored in memory during the session.

- You can save the entire journal using YAML.dump.

- All entries are persisted to journal.yml and can be reloaded when the app is restarted.