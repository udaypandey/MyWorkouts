//
//  SessionPagingView.swift
//  MyWorkouts WatchKit Extension
//
//  Created by Uday Pandey on 15/06/2021.
//

import SwiftUI
import WatchKit

struct SessionPagingView: View {
    @State private var selection: Tab = .metrics

    @EnvironmentObject var workoutManager: WorkoutManager


    enum Tab {
        case controls, metrics, nowPlaying
    }

    var body: some View {
        TabView(selection: $selection) {
            ControlsView().tag(Tab.controls)
            MetricsView().tag(Tab.metrics)
            NowPlayingView().tag(Tab.nowPlaying)
        }
        .navigationTitle(workoutManager.selectedWorkout?.name ?? "")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(selection == .nowPlaying)
    }
}

struct SessionPagingView_Previews: PreviewProvider {
    static var previews: some View {
        SessionPagingView()
    }
}
