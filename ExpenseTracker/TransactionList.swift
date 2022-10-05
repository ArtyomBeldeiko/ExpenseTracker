//
//  TransactionList.swift
//  ExpenseTracker
//
//  Created by Artyom Beldeiko on 11.07.22.
//

import SwiftUI

struct TransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            List {
//                MARK: Transaction Group
                ForEach(Array(transactionListVM.groupTransactionByMonth()), id: \.key) { month, transactions in
                    Section {
                        ForEach(transactions) { transaction in
                            TransactionRow(transaction: transaction)
                        }
                    } header: {
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            
        }
        .navigationTitle("Transaction")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TransactionList_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    static var previews: some View {
        Group {
            NavigationView {
                TransactionList()
            }
            NavigationView {
                TransactionList()
            }
            .preferredColorScheme(.dark)
        }
        .environmentObject(transactionListVM)
    }
}
