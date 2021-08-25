//
//  Digit.swift
//  Digit
//
//  Created by Harshil Shah on 25/08/21.
//

import Algorithms
import Combine
import SwiftUI

struct Digit: View {
	let digit: Int
	
    var body: some View {
		VStack {
			ForEach(clockPositions.indexed(), id: \.0) { _, row in
				HStack {
					ForEach(row.indexed(), id: \.0) { _, dial in
						Dial(hour: dial.hour, minute: dial.minute)
							.aspectRatio(1, contentMode: .fit)
					}
				}
			}
		}
    }
	
	var clockPositions: [[(hour: Double, minute: Double)]] {
		switch digit {
		case 0:
			return [
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 30),
					(hour: 3, minute: 30),
					(hour: 9, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 30),
					(hour: 0, minute: 30),
					(hour: 0, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 30),
					(hour: 0, minute: 30),
					(hour: 0, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 30),
					(hour: 0, minute: 15),
					(hour: 0, minute: 45),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45)
				],
			]
			
		case 1:
			return [
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45),
					(hour: 7.5, minute: 37.5)
				],
				[
					(hour: 0, minute: 15),
					(hour: 6, minute: 45),
					(hour: 0, minute: 30),
					(hour: 7.5, minute: 37.5)
				],
				[
					(hour: 7.5, minute: 37.5),
					(hour: 0, minute: 30),
					(hour: 0, minute: 30),
					(hour: 7.5, minute: 37.5)
				],
				[
					(hour: 7.5, minute: 37.5),
					(hour: 0, minute: 30),
					(hour: 0, minute: 30),
					(hour: 7.5, minute: 37.5)
				],
				[
					(hour: 3, minute: 30),
					(hour: 0, minute: 45),
					(hour: 0, minute: 15),
					(hour: 9, minute: 30)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45)
				],
			]
			
		case 2:
			return [
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 9, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 30),
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45)
				],
				[
					(hour: 0, minute: 30),
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45)
				],
			]
			
		case 3:
			return [
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 9, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 9, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45)
				],
			]
			
		case 4:
			return [
				[
					(hour: 3, minute: 30),
					(hour: 6, minute: 45),
					(hour: 3, minute: 30),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 30),
					(hour: 0, minute: 30),
					(hour: 0, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 30),
					(hour: 0, minute: 15),
					(hour: 0, minute: 45),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 9, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 7.5, minute: 37.5),
					(hour: 7.5, minute: 37.5),
					(hour: 0, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 7.5, minute: 37.5),
					(hour: 7.5, minute: 37.5),
					(hour: 0, minute: 15),
					(hour: 0, minute: 45)
				],
			]
			
		case 5:
			return [
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 30),
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45)
				],
				[
					(hour: 0, minute: 30),
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 9, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45)
				],
			]

		case 6:
			return [
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 30),
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45)
				],
				[
					(hour: 0, minute: 30),
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 30),
					(hour: 3, minute: 30),
					(hour: 9, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 30),
					(hour: 0, minute: 15),
					(hour: 0, minute: 45),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45)
				],
			]
			
		case 7:
			return [
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45),
					(hour: 0, minute: 30),
				],
				[
					(hour: 7.5, minute: 37.5),
					(hour: 7.5, minute: 37.5),
					(hour: 0, minute: 37.5),
					(hour: 0, minute: 37.5)
				],
				[
					(hour: 7.5, minute: 37.5),
					(hour: 6, minute: 7.5),
					(hour: 6, minute: 7.5),
					(hour: 7.5, minute: 37.5)
				],
				[
					(hour: 7.5, minute: 37.5),
					(hour: 0, minute: 30),
					(hour: 0, minute: 30),
					(hour: 7.5, minute: 37.5)
				],
				[
					(hour: 7.5, minute: 37.5),
					(hour: 0, minute: 15),
					(hour: 0, minute: 45),
					(hour: 7.5, minute: 37.5)
				],
			]
			
		case 8:
			return [
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 30),
					(hour: 3, minute: 30),
					(hour: 9, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 22.5),
					(hour: 0, minute: 15),
					(hour: 0, minute: 45),
					(hour: 0, minute: 37.5)
				],
				[
					(hour: 6, minute: 7.5),
					(hour: 3, minute: 30),
					(hour: 9, minute: 30),
					(hour: 6, minute: 52.5)
				],
				[
					(hour: 0, minute: 30),
					(hour: 0, minute: 15),
					(hour: 0, minute: 45),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45)
				],
			]
			
		case 9:
			return [
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 6, minute: 45)
				],
				[
					(hour: 0, minute: 30),
					(hour: 6, minute: 15),
					(hour: 6, minute: 45),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 30),
					(hour: 0, minute: 15),
					(hour: 0, minute: 45),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 9, minute: 30),
					(hour: 0, minute: 30)
				],
				[
					(hour: 3, minute: 30),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45),
					(hour: 0, minute: 30)
				],
				[
					(hour: 0, minute: 15),
					(hour: 3, minute: 45),
					(hour: 3, minute: 45),
					(hour: 0, minute: 45)
				],
			]
			
		default: fatalError("Only single digits allowed")
		}
	}
}

struct Digit_Previews: PreviewProvider {
    static var previews: some View {
		VStack {
			HStack {
				ForEach(0 ..< 5) { digit in
					Digit(digit: digit)
				}
			}
			HStack {
				ForEach(5 ..< 10) { digit in
					Digit(digit: digit)
				}
			}
		}
    }
}
