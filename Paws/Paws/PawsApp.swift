//
//  PawsApp.swift
//  Paws
//
//  Created by Dharti Savaliya on 11/8/25.
//

import SwiftUI
import SwiftData

@main
struct PawsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: PetModel.self)
        }
    }
}
