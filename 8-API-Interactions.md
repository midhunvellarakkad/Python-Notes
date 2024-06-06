# 🌍 Python API Interactions - The Essential Guide

## Talking to Web Services Made Simple

### 📦 First Things First
```bash
pip install requests
```

### 🔌 Basic API Call Template
```python
import requests

api_url = "https://api.example.com/data"
headers = {"Authorization": "Bearer your_token_here"}

response = requests.get(api_url, headers=headers)

if response.ok:  # Checks for 200-299 status
    data = response.json()
    print(f"Success! Got {len(data)} items")
else:
    print(f"Error {response.status_code}: {response.text}")
```

## 🧩 Key Components Explained

### 1. Authentication Methods
```python
# API Key in Header
headers = {"X-API-KEY": "your_api_key"}

# Bearer Token
headers = {"Authorization": "Bearer your_token"}

# Basic Auth
auth = ("username", "password")
response = requests.get(url, auth=auth)
```

### 2. Handling Different Request Types
```python
# GET - Retrieve data
requests.get(url)

# POST - Create data
requests.post(url, json={"key": "value"})

# PUT - Update data
requests.put(url, json={"key": "new_value"})

# DELETE - Remove data
requests.delete(url)
```

### 3. Working with Responses
```python
response = requests.get(url)

# Check status
if 200 <= response.status_code < 300:
    print("Success!")

# Get response data
data = response.json()  # For JSON responses
text = response.text   # Raw text response
```

## 🛠️ Real-World DevOps Examples

### Example 1: Check Service Health
```python
def check_service_health():
    try:
        response = requests.get("https://api.service.com/health", timeout=5)
        return response.status_code == 200
    except requests.exceptions.RequestException:
        return False
```

### Example 2: Trigger CI/CD Pipeline
```python
def trigger_pipeline():
    payload = {
        "ref": "main",
        "inputs": {
            "deploy_env": "production"
        }
    }
    response = requests.post(
        "https://api.github.com/repos/owner/repo/actions/workflows/deploy.yml/dispatches",
        headers={"Authorization": "token YOUR_GITHUB_TOKEN"},
        json=payload
    )
    response.raise_for_status()
```

### Example 3: Fetch Monitoring Metrics
```python
def get_cpu_usage():
    response = requests.get(
        "https://monitoring.example.com/api/metrics",
        params={
            "metric": "cpu_usage",
            "range": "1h"
        },
        headers={"Authorization": "Bearer monitoring_token"}
    )
    return response.json()["values"]
```

## 💡 Pro Tips

1. **Always use timeouts** - Prevent hanging requests
   ```python
   requests.get(url, timeout=3)  # 3 second timeout
   ```

2. **Handle errors properly**
   ```python
   try:
       response = requests.get(url)
       response.raise_for_status()  # Raises exception for bad status codes
   except requests.exceptions.HTTPError as err:
       print(f"HTTP error occurred: {err}")
   ```

3. **Use sessions for multiple requests**
   ```python
   with requests.Session() as session:
       session.headers.update({"Authorization": "Bearer token"})
       # All requests in this block will use the same session
       response1 = session.get(url1)
       response2 = session.get(url2)
   ```

## 🧾 Quick Reference

| Task | Code Example |
|------|--------------|
| GET request | `requests.get(url, headers=headers)` |
| POST with JSON | `requests.post(url, json=data)` |
| Add query params | `params={"key": "value"}` |
| Check success | `response.ok` or `response.status_code == 200` |
| Parse response | `response.json()` for JSON, `response.text` for text |

Remember: APIs are your gateway to automating interactions with virtually any web service! 🚀
