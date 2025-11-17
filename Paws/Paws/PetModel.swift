//
//  PetModel.swift
//  Paws
//
//  Created by Dharti Savaliya on 11/10/25.
//

import Foundation
import SwiftData

@Model
final class PetModel {
    var name: String
    @Attribute(.externalStorage) var photo: Data?
    
    init(name: String, photo: Data? = nil) {
        self.name = name
        self.photo = photo
    }
}

extension PetModel {
    @MainActor
    static var preview: ModelContainer {
        let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try! ModelContainer(for: PetModel.self, configurations: configuration)
        
        container.mainContext.insert(PetModel(name: "Tommy"))
        container.mainContext.insert(PetModel(name: "Luna"))
        container.mainContext.insert(PetModel(name: "Bagasa"))
        container.mainContext.insert(PetModel(name: "Charlie"))
        container.mainContext.insert(PetModel(name: "Daisy"))
        container.mainContext.insert(PetModel(name: "Mimi"))
        
        return container
    }
}
