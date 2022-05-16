//
//  ContentView.swift
//  RestartApp
//
//  Created by Mindstix on 11/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("onBoarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {

        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
