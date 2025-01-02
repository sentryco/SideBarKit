import SwiftUI
/**
 * Component
 * - Note: ref Self to access these etc
 */
extension MenuRowKind {
   /**
    * Icon (left side)
    * - Abstract: This view displays the left-side icon as an image.
    * - Description: Displays the icon on the left side of the menu 
    *                item, which visually represents the item's 
    *                purpose or category.
    * - Fixme: ⚠️️ move this to MenuRowKind
    * - Fixme: ⚠️️ Maybe use the modifier that doesn't need a size, see other icon code etc 👈
    * - Parameters:
    *   - isSelected: A boolean indicating whether the menu item is currently selected.
    *   - iconName: The name of the icon to be displayed.
    * - Returns: A view representing the left-side icon.
    */
   internal /*static*/ func leftSideIcon(isSelected: Bool, iconName: String) -> some View {
      // - Fixme: ⚠️️ Add the bellow later
      // icon color for active / inactive state
      // let iconColor: Color = isSelected ? Palette.SideBar.iconTint.active : Palette.SideBar.iconTint.inActive
      let iconColor: Color = .whiteOrBlack.opacity(isSelected ? 1.0 : 0.6) // We change color based on selected state
      return Image(systemName: iconName)
         .iconStyle(
            // - Fixme: ⚠️️ use Metric.iconSize or relative?
            size: 18, // Sets the size of the icon
            // - Fixme: ⚠️️ needed?
            padding: .zero/*12*/, // Applies default margin padding around the icon
            color: iconColor // Sets the color of the icon based on the iconColor variable
         )
         .background(isTestingSideBar ? .pink : .clear) // ⚠️️ debug
   }
   /**
    * TitleText (left aligned)
    * - Abstract: This view displays the title text as a label.
    * - Description: Displays the title of the menu item, enhancing 
    *                readability and providing context about the 
    *                item's function within the application.
    * - Fixme: ⚠️️ move this to MenuRowKind
    * - Parameters:
    *   - isSelected: A boolean indicating whether the menu item is currently selected.
    *   - titleText: The text to be displayed as the title of the menu item.
    * - Returns: A view representing the title text of the menu item.
    */
   // @MainActor // ⚠️️ swift 6.0 support
   internal /*static*/ func text(isSelected: Bool, titleText: String) -> some View {
      // - Fixme: ⚠️️ Add the bellow later
      // let textColor = isSelected ? Palette.SideBar.buttonText.active : Palette.SideBar.buttonText.inActive
      let textColor: Color = .whiteOrBlack.opacity(isSelected ? 1.0 : 0.6) // We change color based on selected state
      return Text(titleText)
         .rowTextStyle(textColor: textColor)
         .background(isTestingSideBar ? .blue : .clear) // ⚠️️ debug
   }
   /**
    * Tag - Create the `Tag-view` (badge with number of items)
    * - Abstract: This view displays the tag count as a label.
    * - Description: Displays the tag count on the right side of 
    *                the menu item, providing a visual indicator of 
    *                associated items or notifications.
    * - Fixme: ⚠️️ Add some selected-state to tag icon as well? 👈 or is this in now?
    * - Parameters:
    *   - tagCount: The number of items associated with the menu item.
    *   - isSelected: A boolean indicating whether the menu item is currently selected.
    * - Returns: A view representing the tag count of the menu item.
    */
   // @MainActor // ⚠️️ swift 6.0 support
   internal /*static*/ func rightSideTag(tagCount: Binding<Int>, isSelected: Bool) -> some View {
      MenuTagView( // Initializes the MenuTagView
         title: "\(tagCount.wrappedValue/* ?? .zero*/)", // Converts the optional tagCount to a string, defaulting to "0" if nil,
         isSelected: isSelected // Passes the isSelected state to the MenuTagView
      )
//      .padding(.horizontal, MenuStack.sizing.tagHorizontalPadding)
      // ⚠️️ New is that it also is hidden if tagCount is zero. this way things are more minimalistic
      .opacity(/*tagCount == nil || */tagCount.wrappedValue == .zero ? .zero : 1) // hide prefs for instance, prefs has no tags and is set to nil
      // .background(.teal) // ⚠️️ debug
   }
}
