// swiftlint:disable:this file_name
// swiftlint:disable all
// swift-format-ignore-file
// swiftformat:disable all
// Generated using tuist — https://github.com/tuist/tuist



#if os(macOS)
#if hasFeature(InternalImportsByDefault)
public import AppKit
#else
import AppKit
#endif
#else
#if hasFeature(InternalImportsByDefault)
public import UIKit
#else
import UIKit
#endif
#endif

#if canImport(SwiftUI)
#if hasFeature(InternalImportsByDefault)
public import SwiftUI
#else
import SwiftUI
#endif
#endif

// MARK: - Asset Catalogs

public enum TruthActionProjectAsset: Sendable {
  public enum Assets {
  public static let accentColor = TruthActionProjectColors(name: "AccentColor")
    public static let activityIndicatorColor = TruthActionProjectColors(name: "activityIndicatorColor")
    public static let inactiveTabBarItemColor = TruthActionProjectColors(name: "inactiveTabBarItemColor")
    public static let navigationBarTintColor = TruthActionProjectColors(name: "navigationBarTintColor")
    public static let sidebarBackgroundColor = TruthActionProjectColors(name: "sidebarBackgroundColor")
    public static let sidebarTextColor = TruthActionProjectColors(name: "sidebarTextColor")
    public static let statusBarBackgroundColor = TruthActionProjectColors(name: "statusBarBackgroundColor")
    public static let tabBarTintColor = TruthActionProjectColors(name: "tabBarTintColor")
    public static let tintColor = TruthActionProjectColors(name: "tintColor")
    public static let titleColor = TruthActionProjectColors(name: "titleColor")
  }
  public enum Images {
  public static let headerImage = TruthActionProjectImages(name: "HeaderImage")
    public static let launchBackground = TruthActionProjectImages(name: "LaunchBackground")
    public static let launchCenter = TruthActionProjectImages(name: "LaunchCenter")
    public static let navBarImage = TruthActionProjectImages(name: "NavBarImage")
    public static let chevronDown = TruthActionProjectImages(name: "chevronDown")
    public static let chevronUp = TruthActionProjectImages(name: "chevronUp")
    public static let gear = TruthActionProjectImages(name: "gear")
    public static let leftImage = TruthActionProjectImages(name: "leftImage")
    public static let navImage = TruthActionProjectImages(name: "navImage")
    public static let rightImage = TruthActionProjectImages(name: "rightImage")
  }
}

// MARK: - Implementation Details

public final class TruthActionProjectColors: Sendable {
  public let name: String

  #if os(macOS)
  public typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
  public typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, visionOS 1.0, *)
  public var color: Color {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
  public var swiftUIColor: SwiftUI.Color {
      return SwiftUI.Color(asset: self)
  }
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

public extension TruthActionProjectColors.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, visionOS 1.0, *)
  convenience init?(asset: TruthActionProjectColors) {
    let bundle = Bundle.module
    #if os(iOS) || os(tvOS) || os(visionOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
public extension SwiftUI.Color {
  init(asset: TruthActionProjectColors) {
    let bundle = Bundle.module
    self.init(asset.name, bundle: bundle)
  }
}
#endif

public struct TruthActionProjectImages: Sendable {
  public let name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
  public typealias Image = UIImage
  #endif

  public var image: Image {
    let bundle = Bundle.module
    #if os(iOS) || os(tvOS) || os(visionOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let image = bundle.image(forResource: NSImage.Name(name))
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
  public var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
public extension SwiftUI.Image {
  init(asset: TruthActionProjectImages) {
    let bundle = Bundle.module
    self.init(asset.name, bundle: bundle)
  }

  init(asset: TruthActionProjectImages, label: Text) {
    let bundle = Bundle.module
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: TruthActionProjectImages) {
    let bundle = Bundle.module
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftformat:enable all
// swiftlint:enable all
