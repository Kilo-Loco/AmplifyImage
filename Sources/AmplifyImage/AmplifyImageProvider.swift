import Amplify
import Foundation
import Kingfisher

public struct AmplifyImageProvider: ImageDataProvider {
    public let key: String
    public let accessLevel: StorageAccessLevel

    public var cacheKey: String {
        "\(accessLevel.rawValue)/\(key)"
    }

    public func data(handler: @escaping (Result<Data, Error>) -> Void) {
        let options = StorageDownloadDataRequest.Options(accessLevel: accessLevel)
        Task {
            do {
                let data = try await Amplify.Storage.downloadData(
                    key: key,
                    options: options
                ).value
                handler(.success(data))
            } catch {
                handler(.failure(error))
            }
        }
    }
}
