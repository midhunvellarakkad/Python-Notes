# Python Basics Cheat Sheet 📝

## What is Python? 🐍
Python is like giving simple instructions to your computer in a way that almost feels like talking to a friend.

## Storing Information (Variables) 📦
#Think of variables as labeled boxes where you put stuff:

```python
name = "Midhun"    # A word or text (called "string")
age = 300          # A whole number (called "integer")
height = 7.9       # A decimal number (called "float")
is_devops = True   # Either True or False (called "boolean")
```

## Making Decisions (If/Else) 🤔
This helps your computer choose what to do:

```python
if age > 18:
    print("Adult")   # Does this if age is over 18
else:
    print("Minor")   # Does this if age is 18 or under
```

## Repeating Things (Loops) 🔄

### For Loop (Counted repeats)
```python
# Does something exactly 3 times
for i in range(3):
    print(f"Doing thing #{i}")
```

### While Loop (Repeat until...) 
```python
count = 0
while count < 3:  # Keeps going while count is less than 3
    print(count)
    count += 1    # Adds 1 to count each time
```

## Reusable Actions (Functions) 🤖
Functions are like little machines you can use over and over:

```python
def greet(name):
    return f"Hello, {name}!"  # Takes a name, says hello

print(greet("Midhun"))  # Prints "Hello, Midhun!"
```

## Quick Reference Table 📋

| Thing         | What It Does                          | Example                     |
|---------------|---------------------------------------|-----------------------------|
| Variable      | Stores information                    | `name = "Midhun"`           |
| if/else       | Makes decisions                       | `if age > 18: ...`          |
| for loop      | Repeats a set number of times         | `for i in range(3): ...`    |
| while loop    | Repeats until condition is false      | `while count < 3: ...`      |
| Function      | Reusable block of code                | `def greet(name): ...`      |

Remember: Python is all about telling the computer what to do in simple, clear steps!
