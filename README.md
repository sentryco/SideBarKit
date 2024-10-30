# SideBarKit

> Plug and play modular SideBar for macOS / iPad

## Description

SideBarKit is a customizable Sidebar framework. Decouple the sidebar implementation. This results in cleaner, more manageable code.

## Features:
- Toggleable groups (hide/show)
- Reactive tag labels (count change reactivly)
- Dark/Light mode support
- BYO (Bring your own) enum models
- Works for iOS (iPad) and macOS

## Installation

To install SideBarKit using Swift Package Manager, add the following dependency to your `Package.swift` file:
```swift
.package(url: "https://github.com/sentryco/SideBarKit.git", branch: "main")
```

## Todo:
- and clean up done ✅
- Improve comments with copilot ✅
- Improve readme (copilot) 👈
- Make sure comments are max 80 char wide etc
- Make things public
- Add the accessIDs
- Integrate in main project 🔥 Add it to SideBarContainer that has models, callbacks, etc
- Make gif
- Add a way to customize metrics a bit. paddings, offsets etc
- Consider removing binding from selection var. might not be needed  

## Not-todo:
- Add optional sidebar toggle button at the top 🚫 (we can put that elsewhere?)
- add example proj with bidnings etc or? 🚫 (preview is fine for now)
- simulating change with dispatch etc (maybe) 🚫 (not needed it will work)

## Future considerations:
- Implement toggle compact-mode / expanded-mode functionality etc, or not? at least wait and do it later when things are 👉 more stable 👈 etc (align icons to support compact mode)
