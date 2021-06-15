//
//  ControlsView.swift
//  MyWorkouts WatchKit Extension
//
//  Created by Uday Pandey on 15/06/2021.
//

import SwiftUI

struct ControlsView: View {
    var body: some View {
        HStack {
            VStack {
                Button {
                } label: {
                    Image(systemName: "xmark")
                }
                .tint(.red)
                .font(.title2)

                Text("End")
            }

            VStack {
                Button {
                } label: {
                    Image(systemName: "pause")
                }
                .tint(.yellow)
                .font(.title2)

                Text("Pause")
            }
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
