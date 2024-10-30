import Foundation
/**
 * - Abstract: Basic atonomy of a menu item
 * - Fixme: ⚠️️ add description
 */
protocol RowKind {
   /**
    * The title of the menu item.
    * - Description: Specifies the text that will be displayed as the label of the menu item in the user interface.
    */
   var title: String { get }
   /**
    * The action to perform on press.
    * - Description: Specifies the closure to be executed when the menu item is selected, triggering any associated behavior.
    */
   var action: EmptyClosure { get }
}
/**
 * Bulk typealias
 * - Fixme: ⚠️️ add description
 */
typealias RowKinds = [RowKind]
