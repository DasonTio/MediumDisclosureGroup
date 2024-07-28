//
//  FolderComponent.swift
//  Medium-DisclosureGroup
//
//  Created by Dason Tiovino on 26/07/24.
//

import SwiftUI

struct FolderCard: View {
    @State private var isExpanded: Bool = false
    var folder: Folder
    
    var body: some View {
        DisclosureGroup(folder.name, isExpanded: $isExpanded){
            ForEach(folder.subfolders) { subfolder in
                Self(folder: subfolder)
            }
            
            ForEach(folder.files, id: \.self) { file in
                Text(file)
            }
        }
    }
}
