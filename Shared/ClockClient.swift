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
	/// The current time is emitted immediately, followed by the start of the
	/// next minute, and after that a timer emits the current time every 60
	/// seconds. Some noise is added to the start of the next minute time
	/// because timers aren't guaranteed to fire on the dot, and so can fire
	/// just before the minute changes
	static var live: ClockClient {
		ClockClient {
			let now = Date()
			let oneMinuteLater = Calendar.current.date(byAdding: .minute, value: 1, to: now)!
			let startOfNextMinute = Calendar.current.dateInterval(of: .minute, for: oneMinuteLater)!.start.advanced(by: 2/10)
			let delay = now.distance(to: startOfNextMinute)
			
			return Just(now)
				.append(
					Just(startOfNextMinute)
						.delay(for: .seconds(delay), scheduler: DispatchQueue.main)
				)
				.append(
					Timer
						.publish(every: 60, tolerance: 0.1, on: .main, in: .default)
						.autoconnect()
				)
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
	
	static func fixed(_ value: Date = Date()) -> ClockClient {
		ClockClient {
			Just(value).eraseToAnyPublisher()
		}
	}
}
