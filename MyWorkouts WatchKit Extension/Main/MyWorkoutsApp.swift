//
//  MyWorkoutsApp.swift
//  MyWorkouts WatchKit Extension
//
//  Created by Uday Pandey on 15/06/2021.
//

import SwiftUI

@main
struct MyWorkoutsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                StartView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
