# 🔌 Python System Operations Cheat Sheet

## Talking to Your Computer with Python

### 🖥️ Running Terminal Commands
```python
import subprocess

# Run a command and get its output
result = subprocess.run(["ls", "-l"], capture_output=True, text=True)
print(result.stdout)

# Check if command succeeded (0 means success)
print(result.returncode)
```
🔹 Use lists for commands: `["git", "status"]`  
🔹 `capture_output=True` saves the command's output  
🔹 `text=True` gives readable strings instead of bytes  

### 🌍 Working with Environment Variables
```python
import os

# Get a variable
print(os.environ.get("HOME"))  # Prints your home directory

# Set a temporary variable (only for current program)
os.environ["API_KEY"] = "12345"
print(os.environ.get("API_KEY"))
```

### 🔒 Best Practices
1. **Store secrets in environment variables** (never in code!)
   ```bash
   # In terminal before running Python:
   export DB_PASSWORD="supersecret"
   ```
   ```python
   # In your Python code:
   db_pass = os.environ.get("DB_PASSWORD")
   ```

2. **Chain commands safely**:
   ```python
   # Instead of running raw strings:
   subprocess.run("ls -l | grep .py", shell=True)  # ❌ Risky!
   
   # Use this safer approach:
   p1 = subprocess.run(["ls", "-l"], capture_output=True)
   p2 = subprocess.run(["grep", ".py"], input=p1.stdout, capture_output=True)
   print(p2.stdout.decode())
   ```

## 🛠️ Common Use Cases
| Task | Python Solution |
|------|-----------------|
| Get current directory | `os.getcwd()` |
| List files | `subprocess.run(["ls"])` |
| Check network | `subprocess.run(["ping", "google.com"])` |
| Read config | `os.environ.get("DB_HOST")` |

💡 **Remember**: 
- Use `subprocess` for running system tools
- Use `os.environ` for configuration and secrets
- Always prefer lists over string commands for safety
