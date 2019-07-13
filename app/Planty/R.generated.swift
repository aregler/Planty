//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif
    
    fileprivate init() {}
  }
  #endif
  
  /// This `R.image` struct is generated, and contains static references to 10 images.
  struct image {
    /// Image `first`.
    static let first = Rswift.ImageResource(bundle: R.hostingBundle, name: "first")
    /// Image `pot_1`.
    static let pot_1 = Rswift.ImageResource(bundle: R.hostingBundle, name: "pot_1")
    /// Image `pot_2`.
    static let pot_2 = Rswift.ImageResource(bundle: R.hostingBundle, name: "pot_2")
    /// Image `pot_3`.
    static let pot_3 = Rswift.ImageResource(bundle: R.hostingBundle, name: "pot_3")
    /// Image `pot_measurements`.
    static let pot_measurements = Rswift.ImageResource(bundle: R.hostingBundle, name: "pot_measurements")
    /// Image `pot_self`.
    static let pot_self = Rswift.ImageResource(bundle: R.hostingBundle, name: "pot_self")
    /// Image `second`.
    static let second = Rswift.ImageResource(bundle: R.hostingBundle, name: "second")
    /// Image `sensor_measurement`.
    static let sensor_measurement = Rswift.ImageResource(bundle: R.hostingBundle, name: "sensor_measurement")
    /// Image `sensor_plant`.
    static let sensor_plant = Rswift.ImageResource(bundle: R.hostingBundle, name: "sensor_plant")
    /// Image `sensor_self`.
    static let sensor_self = Rswift.ImageResource(bundle: R.hostingBundle, name: "sensor_self")
    
    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "first", bundle: ..., traitCollection: ...)`
    static func first(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.first, compatibleWith: traitCollection)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "pot_1", bundle: ..., traitCollection: ...)`
    static func pot_1(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.pot_1, compatibleWith: traitCollection)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "pot_2", bundle: ..., traitCollection: ...)`
    static func pot_2(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.pot_2, compatibleWith: traitCollection)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "pot_3", bundle: ..., traitCollection: ...)`
    static func pot_3(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.pot_3, compatibleWith: traitCollection)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "pot_measurements", bundle: ..., traitCollection: ...)`
    static func pot_measurements(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.pot_measurements, compatibleWith: traitCollection)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "pot_self", bundle: ..., traitCollection: ...)`
    static func pot_self(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.pot_self, compatibleWith: traitCollection)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "second", bundle: ..., traitCollection: ...)`
    static func second(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.second, compatibleWith: traitCollection)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "sensor_measurement", bundle: ..., traitCollection: ...)`
    static func sensor_measurement(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.sensor_measurement, compatibleWith: traitCollection)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "sensor_plant", bundle: ..., traitCollection: ...)`
    static func sensor_plant(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.sensor_plant, compatibleWith: traitCollection)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "sensor_self", bundle: ..., traitCollection: ...)`
    static func sensor_self(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.sensor_self, compatibleWith: traitCollection)
    }
    #endif
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 3 nibs.
  struct nib {
    /// Nib `CommunityTableViewCell`.
    static let communityTableViewCell = _R.nib._CommunityTableViewCell()
    /// Nib `ShopTableViewCell`.
    static let shopTableViewCell = _R.nib._ShopTableViewCell()
    /// Nib `UserPlantCell`.
    static let userPlantCell = _R.nib._UserPlantCell()
    
    #if os(iOS) || os(tvOS)
    /// `UINib(name: "CommunityTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.communityTableViewCell) instead")
    static func communityTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.communityTableViewCell)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UINib(name: "ShopTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.shopTableViewCell) instead")
    static func shopTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.shopTableViewCell)
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    /// `UINib(name: "UserPlantCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.userPlantCell) instead")
    static func userPlantCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.userPlantCell)
    }
    #endif
    
    static func communityTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> CommunityTableViewCell? {
      return R.nib.communityTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? CommunityTableViewCell
    }
    
    static func shopTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> ShopTableViewCell? {
      return R.nib.shopTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? ShopTableViewCell
    }
    
    static func userPlantCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UserPlantCell? {
      return R.nib.userPlantCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UserPlantCell
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }
  
  #if os(iOS) || os(tvOS)
  struct nib {
    struct _CommunityTableViewCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "CommunityTableViewCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> CommunityTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? CommunityTableViewCell
      }
      
      fileprivate init() {}
    }
    
    struct _ShopTableViewCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "ShopTableViewCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> ShopTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? ShopTableViewCell
      }
      
      fileprivate init() {}
    }
    
    struct _UserPlantCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "UserPlantCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UserPlantCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UserPlantCell
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  #endif
  
  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
    }
    
    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    #endif
    
    #if os(iOS) || os(tvOS)
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UITabBarController
      
      let bundle = R.hostingBundle
      let name = "Main"
      
      static func validate() throws {
        if UIKit.UIImage(named: "gear", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'gear' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "person.circle", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'person.circle' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "plus", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'plus' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "star.circle", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'star.circle' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "tag", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'tag' is used in storyboard 'Main', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    #endif
    
    fileprivate init() {}
  }
  #endif
  
  fileprivate init() {}
}
