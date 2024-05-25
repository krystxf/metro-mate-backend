//
//  Author: Kryštof Krátký
//

import SwiftUI

struct Departure: View {
    let direction: String
    let departureDate: Date
    let metroLine: String

    var body: some View {
        HStack {
            Text(direction)
                .frame(alignment: .leading)
                .font(.caption)
                .fontWeight(.bold)
            Spacer()
            Text(departureDate.formatted(.dateTime.hour().minute()))
                .frame(alignment: .leading)
                .font(.caption)
                .fontWeight(.bold)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 5)
        .background(getMetroLineColor(metroLine))
        .clipShape(.rect(cornerRadius: 10))
    }
}
