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
	
	init() {
		$itunesQuery
			.debounce(for: .milliseconds(700), scheduler: RunLoop.main)
			.removeDuplicates()
			.sink(receiveValue: { value in
				print(value)
			})
			.store(in: &subscriptions)
	}
}
