# PwshUtils.CheatSheets

**PwshUtils.CheatSheets** is a PowerShell module that offers lightweight, searchable cheat sheets for tools like Vim, common Windows system commands, and equivalent commands between Windows and Linux. Ideal for quick reference and cross-platform users.

---

## 📦 Installation

Install the module from PowerShell Gallery:

```powershell
Install-Module -Name PwshUtils.CheatSheets
```

---

## 🧩 Available Commands

### `Get-VimCheatSheet [<Filter>]`
Displays a categorized Vim cheat sheet.  
You can pass an optional filter to search within the `Command` and `Description` column.

```powershell
Get-VimCheatSheet
Get-VimCheatSheet syntax
```

---

### `Get-WindowsCommands [<Filter>]`
Displays common Windows system commands and shortcuts.  
The optional filter is matched against the `Name` and `Command` columns.

```powershell
Get-WindowsCommands
Get-WindowsCommands task
```

---

### `Get-WinLinuxMap [<Filter>]`
Provides a mapping of equivalent commands between Windows and Linux.  
Filter text is matched against both the `Windows` and `Linux` command columns.

```powershell
Get-WinLinuxMap
Get-WinLinuxMap ping
```

---

## 🔎 Features

- Simple, readable output
- Case-insensitive filtering for fast lookup
- Ideal for terminal users, admins, and Vim learners
- Data is fetched from trusted, readonly sources (author-maintained GitHub Gists)

---

## 📄 License

MIT License

---

## 🔗 Links

- [PowerShell Gallery](https://www.powershellgallery.com/packages/PwshUtils.CheatSheets)
- [GitHub Repository](https://github.com/GVNADIR/pwshutils-cheatsheets)
