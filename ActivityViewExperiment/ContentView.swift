import SwiftUI

struct ContentView: View {
    @State var isCover1Presented = false
    @State var isCover2Presented = false
    @State var isCover3Presented = false
    @State var isActivityViewPresented = false

    var body: some View {
        VStack {
            Text("0")
            Button("Show") {
                isCover1Presented = true
            }
            .fullScreenCover(isPresented: $isCover1Presented) {
                VStack {
                    Text("1")
                    Button("Show") {
                        isCover2Presented = true
                    }
                    .fullScreenCover(isPresented: $isCover2Presented) {
                        VStack {
                            Text("2")
                            Button("Show") {
                                isCover3Presented = true
                            }
                            .fullScreenCover(isPresented: $isCover3Presented) {
                                VStack {
                                    Text("3")
                                    Button("Show") {
                                        isActivityViewPresented = true
                                    }
                                    .sheet(isPresented: $isActivityViewPresented) {
                                        ActivityView(activityItems: [UIImage(named: "Image")!], applicationActivities: nil)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
