import Foundation

let remindersDataURL = URL(
	fileURLWithPath: "Reminders",
	relativeTo: FileManager.documentDirectoryURL
)

let stringURL = FileManager.documentDirectoryURL
	.appendingPathComponent("String")
	.appendingPathExtension("txt")

stringURL.path

let challeangeString: String = "To Do List"
let challeangeURL: URL = URL(
	fileURLWithPath: challeangeString,
	relativeTo:	FileManager.documentDirectoryURL
).appendingPathExtension("txt")

print(challeangeURL.lastPathComponent)
