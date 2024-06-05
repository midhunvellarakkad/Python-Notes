# 🌐 Python Requests Library - DevOps Essential

## HTTP Requests Made Simple

### 📦 Installation
```bash
pip install requests
```

### 🌍 Basic GET Request
```python
import requests

# Fetch data from API
response = requests.get("https://api.github.com")

# Check if successful (200 OK)
print(f"Status: {response.status_code}")

# Get response as Python dictionary
data = response.json()
print(f"GitHub API endpoints: {list(data.keys())[:3]}...")
```

### 🔍 Response Handling
| Attribute/Method | Description | Example |
|-----------------|-------------|---------|
| `status_code` | HTTP status code | `200` = OK, `404` = Not Found |
| `text` | Raw response text | `print(response.text[:100])` |
| `json()` | Parse JSON response | `data = response.json()` |
| `headers` | Response headers | `print(response.headers)` |

### 🛠️ Common DevOps Use Cases

**1. API Health Check**
```python
response = requests.get("https://api.service.com/health")
if response.status_code == 200:
    print("Service is healthy!")
else:
    print(f"Service down! Status: {response.status_code}")
```

**2. Passing Parameters**
```python
# Equivalent to https://api.github.com/users/octocat
response = requests.get(
    "https://api.github.com/users",
    params={"login": "octocat"}
)
```

**3. Authentication**
```python
# Using API tokens
headers = {"Authorization": "token YOUR_GITHUB_TOKEN"}
response = requests.get("https://api.github.com/user", headers=headers)
```

**4. POST Requests**
```python
# Sending JSON data
payload = {"name": "new-repo", "private": True}
response = requests.post(
    "https://api.github.com/user/repos",
    json=payload,
    headers=headers
)
```

### 💡 Pro Tips
1. **Always check status codes** - Don't assume requests succeed
2. **Use timeouts** - Prevent hanging requests
   ```python
   requests.get(url, timeout=5)  # 5 second timeout
   ```
3. **Handle errors gracefully**
   ```python
   try:
       response = requests.get(url)
       response.raise_for_status()  # Raises exception for 4XX/5XX
   except requests.exceptions.RequestException as e:
       print(f"Request failed: {e}")
   ```

### 🧾 Quick Reference
| Task | Code |
|------|------|
| GET request | `requests.get(url)` |
| POST request | `requests.post(url, json=data)` |
| Add headers | `headers={"X-Key": "value"}` |
| URL params | `params={"key": "value"}` |
| Basic auth | `auth=("user", "pass")` |

Remember: The `requests` library is your Swiss Army knife for web interactions in DevOps scripts!
