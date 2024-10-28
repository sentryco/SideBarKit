import Foundation
/**
 * Each row view needs to contain this
 */
protocol MenuRowKind {
   /**
    * The title of the menu item.
    * - Abstract: This property holds the text displayed as the title of the menu item.
    * - Description: Represents the text label for the menu item, which is displayed prominently next to the item's icon.
    */
   var titleText: String { get }
   /**
    * The action to perform when the menu item is tapped.
    * - Abstract: This property defines the action to be executed when the menu item is tapped.
    * - Description: Defines the closure to be executed when the menu item is selected, triggering any specific behavior associated with this action.
    */
   var action: () -> Void { get } // (Binding or closure)
   /**
    * Indicates if the menu item is selected.
    * - Abstract: This property indicates whether the menu item is currently selected or not.
    * - Description: Indicates the current selection state of the menu item, where `true` means the item is active or highlighted in the UI.
    * - Fixme: ⚠️️ See selected state in DevicePicker?
    */
   var isSelected: Bool { get }
}
