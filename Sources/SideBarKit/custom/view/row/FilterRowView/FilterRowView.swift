import SwiftUI
/**
 * - Fixme: ⚠️️ Add doc from legacy
 * - Fixme: ⚠️️ could we make these types .modifiers? or button styles?
 */
struct FilterRowView: View, MenuRowKind {
   /**
    * - Fixme: ⚠️️ add docc
    */
   var selected: Binding<UUID?>
   /**
    * - Fixme: ⚠️️ add doc
    */
   let uuid: UUID/* = .init()*/
   /**
    * - Fixme: ⚠️️ add description
    */
   let titleText: String
   /**
    * The name of the image to display next to the menu item.
    * - Abstract: This property specifies the name of the image displayed next to the menu item.
    * - Description: Specifies the icon displayed next to the menu item, enhancing visual identification.
    * - Note: Alternative name: `trailingIconImageName`
    */
   let iconName: String
   /**
    * - Fixme: ⚠️️ add description
    */
   let action: () -> Void // (Binding or closure)
   // tagCount hock (group,row) // we do wiring in the implementor. switch enum for enum etc
   @Binding var tagCount: Int
   /**
    * - Fixme: ⚠️️ add description
    */
//   let isSelected: Bool
}
/**
 * Init
 */
extension FilterRowView {
   /**
    * - Parameter filterType: - Fixme: ⚠️️ add doc
    */
   init(filterType: FilteringType, selected: Binding<UUID?>, uuid: UUID) {
      self.init(
         selected: selected,
         uuid: uuid,
         titleText: filterType.title,
         iconName: filterType.icon,
         action: filterType.action,
         tagCount: filterType.$tag//,
//         isSelected: isSelected
      )
   }
}