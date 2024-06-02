# 📂 Python File Handling Cheat Sheet

## Reading and Writing Files Made Simple

### ✍️ Writing to Files
```python
# Create/overwrite a file
with open("notes.txt", "w") as file:
    file.write("First line\n")
    file.write("Second line\n")
```
🔹 `"w"` mode creates new or overwrites existing files  
🔹 Automatically closes file when done (`with` statement)  
🔹 `\n` creates a new line

### 📖 Reading from Files
```python
# Read entire file
with open("notes.txt", "r") as file:
    content = file.read()
    print(content)
```
🔹 `"r"` mode is for reading (default mode)  
🔹 `.read()` gets all content at once

### ➕ Appending to Files
```python
# Add to existing file
with open("notes.txt", "a") as file:
    file.write("New line added\n")
```
🔹 `"a"` mode adds to end without overwriting

## 🔍 Helpful File Operations

### Check if File Exists
```python
import os

if os.path.exists("notes.txt"):
    print("File found!")
else:
    print("File missing")
```

### Read Line by Line
```python
with open("notes.txt") as file:
    for line in file:
        print(line.strip())  # strip() removes extra whitespace
```

## 📌 File Modes Quick Reference

| Mode | Description                     | Example Use Case             |
|------|---------------------------------|------------------------------|
| `r`  | Read (default)                 | Reading existing files       |
| `w`  | Write (overwrites)             | Creating new files           |
| `a`  | Append (adds to end)           | Logging, adding new data     |
| `x`  | Create (fails if exists)       | Safe file creation           |
| `b`  | Binary mode (images, etc.)     | Working with non-text files  |

💡 Pro Tip: Always use `with` statements - they automatically handle file closing, even if errors occur!
