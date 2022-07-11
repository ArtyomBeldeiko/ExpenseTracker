//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Artyom Beldeiko on 10.07.22.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "10/07/2022", institution: "Cafe De Paris", account: "Visa Cafe De Paris", merchant: "Take and Carry Co.", amount: 22.4, type: "debit", categoryId: 801, category: "Entertainment", isPending: false, isTransfer: false, isExpense: true, isEdited: false)
var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)

