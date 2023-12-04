//
//  SearchAndFilterBar.swift
//  AribnbSwiftUI
//
//  Created by Slava Medvedskyi on 04/12/2023.
//

import SwiftUI

struct SearchAndFilterBar: View {
    
    
    
    var body: some View {
        HStack {
            Image(systemName: "mangifyingglass")
            
            VStack(alignment: .leading, spacing: 2 , content: {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any week - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            })
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundColor(Color(.systemGray4))
                .shadow(color: .black.opacity(0.2), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
