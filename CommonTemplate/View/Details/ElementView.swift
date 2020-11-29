//
//  ElementView.swift
//  HospitalAnalysis
//
//  Created by jk on 2020/11/13.
//  Copyright © 2020 ssl. All rights reserved.
//

import SwiftUI

struct ElementView<GeneralElement: NamedEntityWithSample>: View {
    @EnvironmentObject var userData: UserData<GeneralElement>
    
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                // -- TODO: add ForEach to loop for all properties in an object and visiualize them
                Text("ID: \(userData.elements[userData.selectedIndex].id)")
                
                
                TextField("name",text: $userData.elements[userData.selectedIndex].name)
                    .hLabel(label: "Name")
            }
        }
        
    }
}

