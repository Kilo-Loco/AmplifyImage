![logo](https://user-images.githubusercontent.com/13292981/192897415-e6f61df1-34f3-4818-98da-e6126f888dc4.png)
# AmplifyImage

AmplifyImage is a lightweight wrapper around the powerful, image downloading and caching library, Kingfisher. It makes downloading, caching, and presenting images stored using AWS Amplify Storage easily presentable in your SwiftUI project.

## Usage
To display a publicly stored image, simply pass the storage key to the AmplifyImage View:
```swift
var body: some View {
    AmplifyImage(key: "my-image.jpg")
}
```

For images stored as `protected` or `private`, you can specify the access level:
```swift
var body: some View {
    AmplifyImage(key: "my-image.jpg", accessLevel: .private)
}
```

While AmplifyImage has some of the modifiers provided by KFImage, some have not been ported over. To access all possible modifiers provided by KFImage, simply use the `kfImage` modifier on AmplifyImage:
```swift
var body: some View {
    AmplifyImage(key: "my-image.jpg")
        .kfImage
        .onlyFromCache()
}
```

## Requirements
- iOS 14.0+
- Swift 5.0+

## Swift Package Manager
- File > Swift Packages > Add Package Dependency
- Add https://github.com/Kilo-Loco/AmplifyImage.git
- Select "Up to Next Major" with "0.0.1"
