import Foundation
/**
 * Each group view needs to contain this
 */
protocol MenuGroupKind {
   /**
    * The type of the group.
    * - Description: This property represents the type of the 
    *                group, providing a reference to the 
    *                specific group kind.
    */
   var groupType: any GroupKind { get }
}
