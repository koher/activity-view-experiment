import SwiftUI
import UIKit

struct ActivityView: UIViewControllerRepresentable {
    let activityItems: [Any]
    let applicationActivities: [UIActivity]?
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let viewController: UIActivityViewController = .init(activityItems: activityItems, applicationActivities: applicationActivities)
        return viewController
    }
    
    func updateUIViewController(_ viewController: UIActivityViewController, context: Context) {
        // TODO: activityItems と applicationActivities が変化したときの挙動を検討
    }
}
