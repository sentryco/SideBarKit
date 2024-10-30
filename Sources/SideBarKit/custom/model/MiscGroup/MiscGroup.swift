import SwiftUI
import HybridColor
/**
 * - Abstract: This enum represents the middle menu model for the macOS / ipad app.
 * - Description: Represents miscellaneous menu items such as preferences, favorites, archived items, and trash, which are not directly related to credential types but are essential for application settings and user-specific data management.
 * - Note: Defines the categories available in the middle menu of the macOS / ipad app, allowing users to navigate and manage different sections such as all items, favorites, trash, archive, and settings.
 * - Note: Misc - prefs, favs, archived, trash etc
 * - Fixme: ⚠️️ can we pull these from accountCategory etc?
 * - Fixme: ⚠️️ moveprefs out of bottom menu model etc
 * - Fixme: ⚠️️ move to example project?
 */
struct MiscGroup: GroupKind {
   /**
    * Represents a group of miscellaneous items in the middle menu.
    */
   let title: String = "Misc"
   /**
    * Binding variable to control the presentation of preferences.
    */
   @Binding var isPrefsPresented: Bool
}
extension MiscGroup {
   /**
    * Represents the type of items contained within the miscellaneous group.
    */
   typealias EnumType = Items
   /**
    * - Description: Enum representing the different types of miscellaneous items that can be managed in the middle menu.
    */
   enum Items: CaseIterable {
      case all, favorites, trash, archived, prefs
   }
}
