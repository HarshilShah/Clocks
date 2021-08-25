//
//  ClockClient.swift
//  ClockClient
//
//  Created by Harshil Shah on 25/08/21.
//

import Combine
import Foundation

struct ClockClient {
	var time: () -> AnyPublisher<Date, Never>
}

extension ClockClient {
	static var live: ClockClient {
		ClockClient {
			Timer.publish(every: 60, tolerance: nil, on: .main, in: .default, options: nil)
				.autoconnect()
				.eraseToAnyPublisher()
		}
	}
	
	static var random: ClockClient {
		ClockClient {
			Timer.publish(every: 2, tolerance: nil, on: .main, in: .default, options: nil)
				.autoconnect()
				.map { _ in Date(timeIntervalSinceNow: .random(in: 0 ... 86400)) }
				.eraseToAnyPublisher()
		}
	}
}
