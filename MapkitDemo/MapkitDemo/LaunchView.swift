import SwiftUI

struct LaunchView: View {

    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {

                Text("SwiftUI Demo")
                    .font(.largeTitle)
                    .bold()

                NavigationLink("Mapkit")
                {
                    ContentView()
                }
                .buttonStyle(.borderedProminent)
                .font(.headline)

                NavigationLink("Media") {
                    MediaHomeView()
                }
                .buttonStyle(.bordered)
                .font(.headline)
                
                NavigationLink("Web Links") {
                    WebLinksHomeView()
                }
                .buttonStyle(.bordered)
                .font(.headline)

                Spacer()
            }
            .padding()
        }
    }
}
