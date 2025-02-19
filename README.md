# John the Ripper Password Cracking Script

## Overview
This script automates password cracking using [John the Ripper](https://www.openwall.com/john/). It takes a file containing password hashes as input, attempts to crack them, and displays the cracked passwords.

⚠️ **Disclaimer:** This script is intended for ethical security testing and password recovery only. Unauthorized use against systems you do not own or have explicit permission to test is illegal.

## Prerequisites
- **Operating System:** Linux or macOS (can be adapted for Windows WSL)
- **John the Ripper:** Install it using:
  ```bash
  sudo apt install john   # Debian-based systems
  brew install john       # macOS
  ```

## Usage
### 1. Make the script executable
```bash
chmod +x john_crack.sh
```

### 2. Run the script with a hash file
```bash
./john_crack.sh <hashfile>
```
Example:
```bash
./john_crack.sh hashes.txt
```

### 3. Viewing Cracked Passwords
Once John has processed the hashes, it will display cracked passwords. You can also manually view them using:
```bash
john --show <hashfile>
```

## Notes
- If the cracking process takes too long, try using a **wordlist**:
  ```bash
  john --wordlist=/usr/share/wordlists/rockyou.txt <hashfile>
  ```
- For brute-force attacks, use:
  ```bash
  john --incremental <hashfile>
  ```

