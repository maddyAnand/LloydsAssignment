//
//  ContentView.swift
//  Assignment
//
//  Created by Anand Madhav on 29/01/25.
//

import SwiftUI

struct Assignment: View {
    let assignmentVM = AssignmentViewModel()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(1...assignmentVM.getTotalNumberOfItems(), id: \.self) { indexItem in
                        AssignmentCell(item: self.assignmentVM.getItem(atIndex: indexItem - 1))
                    }
                }
            }.navigationBarTitle("Assignment")
        }
    }
}

#Preview {
    Assignment()
}
