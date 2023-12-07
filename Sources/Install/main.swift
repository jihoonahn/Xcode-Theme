import Foundation
import Command
import File

print("⚜️ Installing Xcode theme...")

let themeURL = URL(fileURLWithPath: #file.replacingOccurrences(of: "Sources/XcodeTheme/main.swift", with: "Jihoon.xccolortheme"))
let themeData = try Data(contentsOf: themeURL)

let xcodeFolder = try Folder(path: .home).subfolder(at: "Library/Developer/Xcode")
let userDataFolder = try xcodeFolder.createSubfolderIfNeeded(at: "UserData")
let themeFolder = try userDataFolder.createSubfolderIfNeeded(at: "FontAndColorThemes")

let themeFile = try themeFolder.createFile(at: "Jihoon.xccolortheme")
try themeFile.write(themeData)

print("🚀 Jihoon's Theme successfully installed")
