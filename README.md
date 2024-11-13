[![Tests](https://github.com/sentryco/SideBarKit/actions/workflows/Tests.yml/badge.svg)](https://github.com/sentryco/SideBarKit/actions/workflows/Tests.yml)
[![codebeat badge](https://codebeat.co/badges/84b7c1e2-9998-4996-8724-57d86ebcd835)](https://codebeat.co/projects/github-com-sentryco-sidebarkit-main)

# SideBarKit

> Plug and play modular SideBar for macOS / iPad

<img width="284" alt="img" src="https://s11.gifyu.com/images/SO1fC.gif">

## Description

SideBarKit is a customizable Sidebar framework. Decouple the sidebar implementation. This results in cleaner, more manageable code.

## Features:

- Toggleable groups (hide / show)
- Reactive tag labels (count change reactivly)
- Dark / Light mode support
- BYO (Bring your own) enum models
- Works for iOS (iPad) and macOS

## Example:

```swift
@State var selectedIdx: CombinedIndex? = .init(group: 0, item: 0) // Track selection
let model = [Top(), Middle(), Bottom()] // Define your model
MenuStack(selectedIndex: $selectedIdx, groups: model) // Add sidebar view
```

## Installation:

To install SideBarKit using Swift Package Manager, add the following dependency to your `Package.swift` file:
```swift
.package(url: "https://github.com/sentryco/SideBarKit", branch: "main")
```

## Dependencies:

- [HybridColor](https://github.com/sentryco/HybridColor)

## Todo:

- Add a way to customize metrics a bit. paddings, offsets etc to match original component 
- Consider removing binding from selection var. Bidning might not be needed  
- Remove unit-tests 
- Add UITests
- Tag count may not need to be a binding 
- Tweak padding around groups. Looks too tall when collapsed

## Future considerations:

- Consider implementing toggle compact-mode / expanded-mode functionality etc, or not? at least wait and do it later when things are 👉 more stable 👈 etc (align icons to support compact mode)
- Consider persisting collapsed state
- Consider persisting selected index
