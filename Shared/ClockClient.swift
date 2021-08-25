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
	/// We delay the timer publisher by the amount of time until the start of
	/// the next minute, and then prepend that timestamp to the timer's
	/// emissions because it only fires after it's duration has completed
	static var live: ClockClient {
		ClockClient {
			let now = Date()
			let oneMinuteLater = Calendar.current.date(byAdding: .minute, value: 1, to: now)!
			let startOfNextMinute = Calendar.current.dateInterval(of: .minute, for: oneMinuteLater)!.start
			let delay = now.distance(to: startOfNextMinute)
			
			return Just(now)
				.delay(for: .seconds(delay), scheduler: DispatchQueue.main)
				.append(
					Timer.publish(every: 60, tolerance: 0.01, on: .main, in: .default)
						.autoconnect()
						.prepend(startOfNextMinute)
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
}
