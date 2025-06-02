# 🔐 Advanced Wi-Fi Penetration Testing Suite

![Banner](1.PNG)  
*Enterprise-grade wireless security assessment tool*

---

## 📜 Legal Disclaimer
**Warning:** Unauthorized access to computer networks is illegal. This tool is intended for:  
✅ Authorized penetration testing  
✅ Security research  
✅ Educational purposes  

By using this software, you agree to use it only on networks you own or have explicit permission to test.

---

## 🧰 Technical Specifications

### 🏗 Core Architecture
- **Attack Method:** Hybrid dictionary/pattern-based brute force
- **Cracking Engine:** Multi-threaded (Async I/O)
- **Supported Protocols:** WPA/WPA2-PSK, WEP (legacy)
- **Persistence:** JSON-based session saving

### 📦 Dependencies
| Component | Version |
|-----------|---------|
| .NET Runtime | 6.0+ |
| WinPCap | 4.1.3+ |
| Supported Drivers | See [COMPATIBILITY.md](COMPATIBILITY.md) |

---

## 🛠 Installation Guide

### Method 1: Binary Deployment
```powershell
# Recommended for most users
iwr -Uri "https://github.com/pl7x3cut0r/wifi-bf-tool/releases/v1.0/WiFi.Brute.Force.exe" -OutFile "wifi_bf.exe"
