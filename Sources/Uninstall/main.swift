import Foundation
import File

print("😢 Uninstalling Xcode theme...")

let xcodeFolder = try Folder(path: .home).subfolder(at: "Library/Developer/Xcode")
let userDataFolder = try xcodeFolder.createSubfolderIfNeeded(at: "UserData")
let themeFolder = try userDataFolder.createSubfolderIfNeeded(at: "FontAndColorThemes")

let file = try themeFolder.file(at: "Jihoon.xccolortheme")
try file.delete()

print("🙏 Jihoon's Theme successfully uninstalled")
