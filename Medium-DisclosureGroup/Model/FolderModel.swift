//
//  FolderModel.swift
//  Medium-DisclosureGroup
//
//  Created by Dason Tiovino on 26/07/24.
//

import Foundation

struct Folder: Identifiable {
    let id = UUID()
    let name: String
    var subfolders: [Folder] = []
    var files: [String] = []
}
