import Amplify
import Kingfisher

extension Source {
    public static func amplify(key: String, accessLevel: StorageAccessLevel = .guest) -> Source {
        return .provider(AmplifyImageProvider(key: key, accessLevel: accessLevel))
    }
}
