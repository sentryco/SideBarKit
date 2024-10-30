import Foundation
/**
 * - Abstract: Basic atonomy of a menu item
 * - Description: This protocol defines the basic structure of a menu item, including its title and the action to perform when selected.
 */
public protocol RowKind {
   /**
    * The title of the menu item.
    * - Description: Specifies the text that will be displayed as the label of the menu item in the user interface.
    */
   var title: String { get }
   /**
    * The action to perform on press.
    * - Description: Specifies the closure to be executed when the menu item is selected, triggering any associated behavior.
    */
   var action: () -> Void { get }
}
/**
 * Bulk typealias
 * - Description: This typealias represents an array of items conforming to the `RowKind` protocol, providing a convenient way to handle multiple menu items.
 */
public typealias RowKinds = [RowKind]
