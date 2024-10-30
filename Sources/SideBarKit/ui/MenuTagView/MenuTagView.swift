import SwiftUI
/**
 * The tag in the menu - Used to show item count in the `SideBar`
 * - Abstract: Badge with number of items
 * - Description: This is a view that displays a tag in the menu. It is used to display the tag icon and title.
 * - Note: Alt name: `TagView`
 * - Fixme: ⚠️️ Add subtle stroke? maybe yes
 * - Fixme: ⚠️️ Tweak the font for menu-item's for macos, what's wrong with it? size?
 */
internal struct MenuTagView: View {
   /**
    * The title of the tag.
    * - Description: The text label that represents the tag's name in the user interface.
    * - Note: This does not need to be a binding. Bindings are only need when updating upstream, not downstream
    */
   internal let title: String
   /**
    * Used for changing the opacity on selected state etc
    * - Description: A boolean value indicating whether the tag is currently selected.
    */
   internal let isSelected: Bool
}
