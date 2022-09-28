import Kingfisher
import SwiftUI

extension KFImage {
    public func scaleToFillWidth(aspectRatio: Double = 1) -> some View {
        self.resizable()
            .aspectRatio(contentMode: .fill)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .clipped()
            .aspectRatio(aspectRatio, contentMode: .fit)
    }
}
