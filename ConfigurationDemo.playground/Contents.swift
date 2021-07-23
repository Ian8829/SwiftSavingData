import UIKit

let sharedSession = URLSession.shared
sharedSession.configuration.allowsCellularAccess
sharedSession.configuration.allowsCellularAccess = false
// Not Changed!
sharedSession.configuration.allowsCellularAccess

let myDefaultconfiguration = URLSessionConfiguration.default
let eConfig = URLSessionConfiguration.ephemeral
let bConfig = URLSessionConfiguration.background(withIdentifier: "ianWhite")

myDefaultconfiguration.allowsCellularAccess = false
// Changed!
myDefaultconfiguration.allowsCellularAccess

myDefaultconfiguration.allowsExpensiveNetworkAccess = true
myDefaultconfiguration.allowsConstrainedNetworkAccess = true

let myDefaultSession = URLSession(configuration: myDefaultconfiguration)
myDefaultSession.configuration.allowsConstrainedNetworkAccess

let defaultSession = URLSession(configuration: .default)
defaultSession.configuration.allowsCellularAccess
