//
//  ListingItemView.swift
//  AribnbSwiftUI
//
//  Created by Slava Medvedskyi on 03/12/2023.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
    "listing-1",
    "listing-2",
    "listing-3",
    "listing-4",
    ]
    
    var body: some View {
        VStack {
            // images
            
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tabViewStyle(.page)
            
            // listing details
            HStack(alignment: .top) {
                // detailes
                
                VStack(alignment: .leading) {
                    Text("Maimi, Florida")
                        .fontWeight(.semibold)
                    
                    Text("120klm away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 10 - 19")
                        .foregroundStyle(.gray)

                    HStack(spacing: 4) {
                        Text("583$")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    
                }
                
                Spacer()
                // reting
                Image(systemName: "star.fill")
                 Text("4.76")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
