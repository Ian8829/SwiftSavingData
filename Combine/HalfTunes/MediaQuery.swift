//
//  MediaQuery.swift
//  HalfTunes
//
//  Created by ian white on 2021/07/23.
//  Copyright © 2021 raywenderlich. All rights reserved.
//

import Foundation
import Combine

class MediaQuery: ObservableObject {
	@Published var itunesQuery = ""
	@Published var searchResults: [MusicItem] = []
	var subscriptions: Set<AnyCancellable> = []
}
