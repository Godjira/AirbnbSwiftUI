//
//  ListingItemView.swift
//  AribnbSwiftUI
//
//  Created by Slava Medvedskyi on 03/12/2023.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack {
            // images
            
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
                // detailes
                
                VStack(alignment: .leading) {
                    Text("Maimi, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("120klm away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 10 - 19")
                        .foregroundStyle(.gray)

                    HStack(spacing: 4) {
                        Text("583$")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                    
                }
                
                Spacer()
                // rating
                ListingRatingView()
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
