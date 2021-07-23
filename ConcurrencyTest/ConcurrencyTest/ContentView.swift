//
//  ContentView.swift
//  ConcurrencyTest
//
//  Created by ian white on 2021/07/23.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			Spacer()
			DatePicker(
				selection: .constant(Date()),
				label: { Text("Date") }
			)
				.labelsHidden()
			Button(
				action: calculatePrimes,
				label: { Text("Calculate Primes") }
			)
			Spacer()
		}
	}
	
	func calculatePrimes() {
		for number in 0...1_000_000 {
			let isPrimeNumber = isPrime(number: number)
			print("\(number) is prime: \(isPrimeNumber)")
		}
	}
	
	func isPrime(number: Int) -> Bool {
		if number <= 1 {
			return false
		}
		if number <= 3 {
			return true
		}
		var i = 2
		while i * i <= number {
			if number % i == 0 {
				return false
			}
			i = i + 2
		}
		return true
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
