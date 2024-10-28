import SwiftUI
// - Fixme: ⚠️️ add preview
struct FilterRowView: View, MenuRowKind {
   let titleText: String
   /**
    * The name of the image to display next to the menu item.
    * - Abstract: This property specifies the name of the image displayed next to the menu item.
    * - Description: Specifies the icon displayed next to the menu item, enhancing visual identification.
    * - Note: Alternative name: `trailingIconImageName`
    */
   let iconName: String
   let action: () -> Void // (Binding or closure)
   // tagCount hock (group,row) // we do wiring in the implementor. switch enum for enum etc
   @Binding var tagCount: Int
   let isSelected: Bool
}
/**
 * Init
 */
extension FilterRowView {
   /**
    * - Parameter filterType: - Fixme: ⚠️️ add doc
    */
   init(filterType: FilteringType, isSelected: Bool) {
      self.init(
         titleText: filterType.title,
         iconName: filterType.icon,
         action: filterType.action,
         tagCount: filterType.$tag, 
         isSelected: isSelected
      )
   }
}
/**
 * Content
 */
extension FilterRowView {
   var body: some View {
      content
         .buttonWrapper(action: action)
   }
   /**
    * Content (left-icon, title, right-tag)
    * - Abstract: This view composes the left-icon, title, and right-tag views into a horizontal stack.
    * - Description: Combines the left-side icon, title, and right-side tag into a cohesive horizontal layout, ensuring all elements are aligned and interactively responsive.
    */
   var content: some View {
      HStack(spacing: .zero) {
         leftSideIcon // left
         text // center
         Spacer()
         rightSideTag // right
      }
      .contentShape(Rectangle()) // ⚠️️ key to making the entire button tappable / pressable, or else only the text fill is tappable etc
   }
}
/**
 * Component
 */
extension FilterRowView {
   /**
    * Icon (left side)
    * - Abstract: This view displays the left-side icon as an image.
    * - Description: Displays the icon on the left side of the menu item, which visually represents the item's purpose or category.
    * - Fixme: ⚠️️ Maybe use the modifier that doesn't need a size, see other icon code etc 👈
    */
   fileprivate var leftSideIcon: some View {
      // - Fixme: ⚠️️ add the bellow later
      // icon color for active / inactive state
      // let iconColor: Color = isSelected ? Palette.SideBar.iconTint.active : Palette.SideBar.iconTint.inActive
      let iconColor: Color = .whiteOrBlack.opacity(isSelected ? 1.0 : 0.6) // We change color based on selected state
      return Image(systemName: iconName)
         .iconStyle(
            // - Fixme: ⚠️️ use Metric.iconSize or relative?
            size: 18, // Sets the size of the icon
            padding: 12, // Applies default margin padding around the icon
            color: iconColor // Sets the color of the icon based on the iconColor variable
         )
         .background(isTest ? .pink : .clear) // ⚠️️ debug
   }
   /**
    * TitleText (left aligned)
    * - Abstract: This view displays the title text as a label.
    * - Description: Displays the title of the menu item, enhancing readability and providing context about the item's function within the application.
    */
   fileprivate var text: some View {
      // - Fixme: ⚠️️ add the bellow later
      // let textColor = isSelected ? Palette.SideBar.buttonText.active : Palette.SideBar.buttonText.inActive
      let textColor: Color = .whiteOrBlack.opacity(isSelected ? 1.0 : 0.6) // We change color based on selected state
      return Text(self.titleText)
         .rowTextStyle(textColor: textColor)
         .background(isTest ? .blue : .clear) // ⚠️️ debug
   }
   /**
    * Tag - Create the `Tag-view` (badge with number of items)
    * - Abstract: This view displays the tag count as a label.
    * - Description: Displays the tag count on the right side of the menu item, providing a visual indicator of associated items or notifications.
    * - Fixme: ⚠️️ Add some selected-state to tag icon as well? 👈 or is this in now?
    */
   fileprivate var rightSideTag: some View {
      MenuTagView( // Initializes the MenuTagView
         title: "\(tagCount/* ?? .zero*/)", // Converts the optional tagCount to a string, defaulting to "0" if nil,
         isSelected: isSelected // Passes the isSelected state to the MenuTagView
      )
      // ⚠️️ New is that it also is hidden if tagCount is zero. this way things are more minimalistic
      .opacity(/*tagCount == nil || */tagCount == .zero ? .zero : 1) // hide prefs for instance, prefs has no tags and is set to nil
      // .background(.teal) // ⚠️️ debug
   }
}
/**
 * Preview
 * - Abstract: creats 2x2 variations. selected, unselected, dark, light?
 * - Description: Provides a preview of the MenuItemView in various states (selected/unselected) and themes (dark/light) to visualize its appearance in different UI contexts.
 * - Fixme: ⚠️️ Adjust design for macOS? okay for now?
 * - Fixme: ⚠️️ Align the tag-labels better, see legacy? make it more round, less elongated?
 */
#Preview(traits: .fixedLayout(width: 350, height: 200)) { // ⚠️️ traits only work for macOS I think
   PreviewContainer {
      FilterRowView(titleText: "Menu item", iconName: "heart", action: { print("✨") }, tagCount: .constant(5), isSelected: false)  /*true*/
         .padding(16)
         .background(Color.blackOrWhite.opacity(1)) // Color.blackOrWhite
      // .frame(maxWidth: 300)
         #if os(macOS)
         .padding(.horizontal)
         #endif
   }
   .environment(\.colorScheme, .dark)
}

//   var icon: some View {
//      Image.init(systemName: "heart")
//   }
//   var text: some View {
//      Text(titleText)
//   }
//   var tag: some View {
//      Circle()
//         .frame(width: 24, height: 24)
//   }
/**
 * Preview
 */
//#Preview {
//   FilterRowView(
//      titleText: "Login",
//      iconName: "heart",
//      action: { Swift.print("action") },
//      tagCount: .constant(0)
//   )
//}
