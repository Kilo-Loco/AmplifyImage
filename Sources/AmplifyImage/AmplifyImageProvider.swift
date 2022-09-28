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
        _ = Amplify.Storage.downloadData(key: key, options: options) { result in
            switch result {
            case .success(let data):
                handler(.success(data))
            case .failure(let error):
                handler(.failure(error))
            }
        }
    }
}
