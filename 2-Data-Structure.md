# Python Data Structures Cheat Sheet 🗂️

## 1. Lists - Your Flexible Shopping Basket 🛒
Think of a list like a basket that holds multiple items in order. You can add or remove things anytime.

```python
servers = ["web1", "db1", "cache1"]
servers.append("web2")  # Add "web2" to the end

print(servers)  # Shows: ['web1', 'db1', 'cache1', 'web2']
```

**When to use:** When you need a collection that might grow or change.

## 2. Tuples - The Sealed Lunchbox 🍱
A tuple is like a packed lunch - once made, you can't change what's inside.

```python
credentials = ("admin", "password123")
print(credentials)  # Shows: ('admin', 'password123')
```

**When to use:** For things that should never change, like constants.

## 3. Dictionaries - Your Personal Address Book 📖
Each entry has a name (key) and details (value). Like finding a phone number by name.

```python
config = {
    "host": "localhost",
    "port": 8080
}

print(config["host"])  # Shows: localhost
```

**When to use:** When you need to look up information quickly by name.

## 4. Sets - The Unique Items Jar 🫙
Automatically removes duplicates - great for collecting unique things.

```python
ips = {"192.168.1.1", "192.168.1.2", "192.168.1.1"}
print(ips)  # Shows: {'192.168.1.2', '192.168.1.1'}
```

**When to use:** When you only care about unique values.

## ✨ Bonus: List Comprehension (Smart Shortcut)
A quick way to filter or modify lists in one line.

```python
ports = [80, 443, 8080]
open_ports = [p for p in ports if p != 8080]  # Excludes 8080
print(open_ports)  # Shows: [80, 443]
```

## Quick Comparison Table 📊

| Type        | Example                  | Changeable? | Duplicates? | Best For                          |
|-------------|--------------------------|-------------|-------------|-----------------------------------|
| **List**    | `["a", "b", "c"]`        | ✅ Yes       | ❌ No        | Collections that might change     |
| **Tuple**   | `("a", "b")`             | ❌ No        | ❌ No        | Things that should never change   |
| **Dictionary** | `{"key": "value"}`    | ✅ Yes       | ✅ Keys unique | Looking up info by name           |
| **Set**     | `{"a", "b"}`            | ✅ Yes       | ✅ Yes       | Storing unique values only        |

Remember: Choose the right "container" for your data needs! 🧠
