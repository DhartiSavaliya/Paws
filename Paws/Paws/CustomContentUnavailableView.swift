//
//  CustomContentUnavailableView.swift
//  Paws
//
//  Created by Dharti Savaliya on 11/10/25.
//

import SwiftUI

struct CustomContentUnavailableView: View {
    var title: String
    var icon: String
    var description: String
    var body: some View {
        ContentUnavailableView {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 96)
            Text(title)
                .font(.title)
        }description: {
            Text(description)
        }
        .foregroundStyle(.tertiary)
    }
}

#Preview {
    CustomContentUnavailableView(
        title: "No Photo",
        icon: "cat.circle",
        description: "Add a photo to get started.")
}
