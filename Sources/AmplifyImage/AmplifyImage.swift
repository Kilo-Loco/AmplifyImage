import Amplify
import Foundation
import Kingfisher
import SwiftUI

public struct AmplifyImage: View {
    public let key: String
    public let accessLevel: StorageAccessLevel
    
    public init(key: String, accessLevel: StorageAccessLevel = .guest) {
        self.key = key
        self.accessLevel = accessLevel
    }
    
    public var body: KFImage {
        KFImage(source: .amplify(key: key, accessLevel: accessLevel))
    }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension AmplifyImage {

    public func resizable(
        capInsets: EdgeInsets = EdgeInsets(),
        resizingMode: Image.ResizingMode = .stretch) -> KFImage
    {
        self.body.resizable(capInsets: capInsets, resizingMode: resizingMode)
    }

    public func renderingMode(_ renderingMode: Image.TemplateRenderingMode?) -> KFImage {
        self.body.renderingMode(renderingMode)
    }

    public func interpolation(_ interpolation: Image.Interpolation) -> KFImage {
        self.body.interpolation(interpolation)
    }

    public func antialiased(_ isAntialiased: Bool) -> KFImage {
        self.body.antialiased(isAntialiased)
    }
}
