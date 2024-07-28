//
//  ContentView.swift
//  Medium-DisclosureGroup
//
//  Created by Dason Tiovino on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    var folder: Folder
    @State private var isExpanded:Bool = false
    
    var body: some View {
        List{
            FolderCard(folder: folder)
        }
    }
}

let previewFolderStructure = Folder(
    name: "Root Folder",
    subfolders: [
        Folder(
            name: "Folder 1",
            subfolders: [
                Folder(
                    name: "Subfolder 1.1",
                    files: [
                        "File 1.1.1",
                        "File 1.1.2"
                    ]
                ),
                Folder(name: "Subfolder 1.2")
            ], files: [
                "File 1.1",
                "File 1.2"
            ]
        ),
        Folder(
            name: "Folder 2",
            files: [
                "File 2.1",
                "File 2.2"
            ]
        )
    ],
    files: ["Root File1", "Root File2"]
)

#Preview {
    ContentView(folder: previewFolderStructure)
}
