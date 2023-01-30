import AdyenDropIn

public struct Platform_SDK {
    public private(set) var text = "Hello, World!"

    public init() {
        _ = DropInComponent.Configuration()
    }
}
