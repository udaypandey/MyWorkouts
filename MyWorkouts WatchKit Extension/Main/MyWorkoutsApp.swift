//
//  MyWorkoutsApp.swift
//  MyWorkouts WatchKit Extension
//
//  Created by Uday Pandey on 15/06/2021.
//

import SwiftUI

@main
struct MyWorkoutsApp: App {
    @StateObject var workoutManager = WorkoutManager()

    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                StartView()
            }
            .sheet(isPresented: $workoutManager.showingSummaryView) {
                SummaryView()
            }
            .environmentObject(workoutManager)
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
