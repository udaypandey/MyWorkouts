//
//  SessionPagingView.swift
//  MyWorkouts WatchKit Extension
//
//  Created by Uday Pandey on 15/06/2021.
//

import SwiftUI

struct SessionPagingView: View {
    @State private var selection: Tab = .metrics

    enum Tab {
        case controls, metrics, nowPlaying
    }

    var body: some View {
        TabView(selection: $selection) {
            Text("Controls").tag(Tab.controls)
            Text("Metrics").tag(Tab.metrics)
            Text("Now Playing").tag(Tab.nowPlaying)

        }
    }
}

struct SessionPagingView_Previews: PreviewProvider {
    static var previews: some View {
        SessionPagingView()
    }
}
