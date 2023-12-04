//
//  ListingRatingView.swift
//  AribnbSwiftUI
//
//  Created by Slava Medvedskyi on 04/12/2023.
//

import SwiftUI

struct ListingRatingView: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
            Text("4.76")
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ListingRatingView()
}
