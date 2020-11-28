//
//  ElementTab.swift
//  HospitalAnalysis
//
//  Created by jk on 2020/11/14.
//  Copyright © 2020 ssl. All rights reserved.
//

import SwiftUI

struct ElementTab<GeneralElement: NamedEntityWithSample>: View {
    @EnvironmentObject var userData: UserData<GeneralElement>
    
    
    var body: some View {
        //VStack(alignment: .leading, spacing: 12) {
        VStack {
            //DetailHead(elementIndex:selectedIndex)
            
            TabView {
                ElementView<GeneralElement>()
                //Text("none")
                    .tabItem {Text("\(userData.selectedElement?.name ?? "none")")}
                    //.padding()
            }
        }
    }
}

struct ElementTab_Previews: PreviewProvider {
    static var previews: some View {
        ElementTab<GeneralItem>().environmentObject(UserData<GeneralItem>())
    }
}
