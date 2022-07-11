//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Artyom Beldeiko on 10.07.22.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
