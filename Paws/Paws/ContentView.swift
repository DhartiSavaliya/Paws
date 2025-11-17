//
//  ContentView.swift
//  Paws
//
//  Created by Dharti Savaliya on 11/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext)  var modelContext
    @Query private var petsModel: [PetModel]
    
    let layout = [
        GridItem(.flexible(minimum: 120)),
        GridItem(.flexible(minimum: 120))
    ]
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: layout) {
                    GridRow {
                        ForEach(petsModel) { pet in
                            
                        } //: LOOP
                    } //: GRID ROW
                }// : GRID LAYOUT
            } // scrollview
            
            .overlay {
                if petsModel.isEmpty {
                    CustomContentUnavailableView(title: "No Pets", icon: "dog.circle", description: "Add a new pet to get started.")
                }
            }
        }
    }
}
#Preview("Sample Data") {
    ContentView()
        .modelContainer(PetModel.preview)
}

#Preview("No Data") {
    ContentView()
        .modelContainer(for: PetModel.self, inMemory: true)
}
