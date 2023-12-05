//
//  CollapsedPickerView.swift
//  AribnbSwiftUI
//
//  Created by Slava Medvedskyi on 04/12/2023.
//

import SwiftUI

struct CollapsedPickerView: View {
    
    let title: String
    let description: String
    
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.headline)
            
        }

    }
}

#Preview {
    CollapsedPickerView(title: "Who", description: "Add guests")
}
