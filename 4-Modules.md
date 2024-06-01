# 📦 Python Modules & Packages – Your Code Toolbox

## Why Reuse Code?
Python lets you borrow ready-made tools so you don't have to build everything yourself!

### You can:
- Use Python's built-in tools (`os`, `json`, etc.)
- Download extra tools from the internet (`requests`, `numpy`)
- Create your own tools (modules)

---

## 🧰 Built-In Modules (Free Tools!)

These come with Python automatically:

```python
import os
import json

# Find where you are
print(os.getcwd())  # Shows your current folder

# Work with JSON data
data = '{"name": "Alex"}'
info = json.loads(data)
print(info["name"])  # Prints "Alex"
```

---

## 🌍 Installing Extra Tools

Some useful tools aren't included by default. Install them with `pip`:

```bash
pip install requests  # In your terminal
```

Then use them:

```python
import requests

website = requests.get("https://google.com")
print(website.status_code)  # 200 means success!
```

---

## 🛠️ Make Your Own Tools

Create a file called `greetings.py`:

```python
# greetings.py
def welcome(name):
    return f"Hi there, {name}!"
```

Use it in another file:

```python
import greetings

print(greetings.welcome("Sam"))  # Prints "Hi there, Sam!"
```

---

## 📦 Packages (Tool Folders)

A package is just a folder containing multiple module files, with a special `__init__.py` file.

Example folder structure:
```
my_project/
├── my_tools/
│   ├── __init__.py
│   ├── math_tools.py
│   └── text_tools.py
└── main.py
```

How to use:
```python
from my_tools import math_tools
print(math_tools.add(2, 3))  # If you have add() in math_tools.py
```

---

## 🧠 Quick Guide

| Term       | What It Is                          | Example                     |
|------------|-------------------------------------|-----------------------------|
| **Module** | A `.py` file with reusable code     | `import my_module`          |
| **Package**| Folder of modules with `__init__.py`| `from my_pkg import module` |
| **pip**    | Tool to install packages            | `pip install package_name`  |

Remember: Python's power comes from reusing code - don't rewrite what already exists! 🚀
