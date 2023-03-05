//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-28.
//

import SwiftUI

struct AppetizerDetailView: View {
    // Pull in order from the environment that was injected
    // in AppetizersApp
    @EnvironmentObject var order: Order

    @Binding var isShowingDetail: Bool
    let appetizer: Appetizer
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)

            VStack {
                Text(appetizer.name)
                    .fontWeight(.semibold)
                    .font(.title2)

                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }

            HStack(spacing: 40) {
                NutritionInfo(title: "Calories", value: appetizer.calories)
                NutritionInfo(title: "Carbs", value: appetizer.carbs)
                NutritionInfo(title: "Protein", value: appetizer.protein)
            }
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 10)
        .overlay(
            Button {
                isShowingDetail = false
            } label: {
                XDismissButton()
            },
            alignment: .topTrailing
        )
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(isShowingDetail: .constant(true), appetizer: MockData.sampleAppetizer)
    }
}

struct NutritionInfo: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .fontWeight(.bold)
                .font(.caption)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
