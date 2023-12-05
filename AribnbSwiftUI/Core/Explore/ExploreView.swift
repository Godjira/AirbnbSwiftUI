//
//  ExploreView.swift
//  AribnbSwiftUI
//
//  Created by Slava Medvedskyi on 03/12/2023.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    
    var body: some View {
        
        if showDestinationSearchView {
            DestinationSearchView(show: $showDestinationSearchView)
        } else {
            NavigationStack {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                self.showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 32, content: {
                        ForEach(1...10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                            }
                        }
                    })
                    .padding()
                }
                
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
            
        }
    }
}

#Preview {
    ExploreView()
}
