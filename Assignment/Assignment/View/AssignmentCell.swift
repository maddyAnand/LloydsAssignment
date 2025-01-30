//
//  AssignmentCell.swift
//  Assignment
//
//  Created by Anand Madhav on 29/01/25.
//

import SwiftUI

struct AssignmentCell: View {
    let item: AssignmentModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                AsyncImage(url: URLComponents.getUrl(path: "\(item.urlPath)\(item.imageResolution)")) { image in
                    image.resizable()
                } placeholder: {
                    Image("Placeholder")
                }
                .frame(width: 50, height: 50)
                .clipShape(.rect(cornerRadius: 5))
                .padding(20)
                Text("\(item.name)")
                    .bold()
                    .font(.headline)
            }
        }
    }
}

#Preview {
    AssignmentCell(item: AssignmentModel(id: "1", name: "Cell Number 1", urlPath: "id/1/", imageResolution: "40/40"))
}
