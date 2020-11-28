//
//  ContentView.swift
//  FixHospitalPosts
//
//  Created by jk on 2020/7/18.
//  Copyright © 2020 ssl. All rights reserved.
//

import SwiftUI


struct IndicatorMain: View {
    var body: some View {
//        TabsAndNaviDetails<GeneralItem>()
//            .environmentObject(UserData<GeneralItem>())

        ElementMain<GeneralItem>().environmentObject(UserData<GeneralItem>())
    }
}

struct IndicatorMain_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorMain().environmentObject(UserData<GeneralItem>())
    }
}

