import Foundation
/**
 * CombinedIndex
 * - Abstract: Used for selecting / deselecting items in a 2 level multi-dim UI construct
 * - Description: The CombinedIndex struct is designed to encapsulate the
 *                 concept of a two-dimensional index, typically used in
 *                 user interfaces where items are organized in a grid or
 *                 table format. It combines both row and column indices
 *                 into a single entity, allowing for easy management and
 *                 manipulation of item selection states. This struct is
 *                 particularly useful in scenarios where you need to track
 *                 the position of an item within a nested structure, such
 *                 as a list of lists or a grid layout.
 * - Note: We define a CombinedIndex struct to represent the row and column together.
 * - Note: equatable so we can assert if its selected etc
 * - Fixme: ⚠️️ Try col, row. ask copilot. col, row is decoupled from needing to be stored etc.
 * - Fixme: ⚠️️ Rename to pathIndex?
 * - Fixme: ⚠️️ Add notes regarding using uuid, and how it would hange the design, and that we want to be as stateless as possible?
 * - Fixme: ⚠️️ Rename to group, item?
 * - Fixme: ⚠️️ Use combinedIndex, as its easier to set init selection etc
 */
public struct CombinedIndex: Equatable {
   /**
    * - Fixme: ⚠️️ add description
    */
   public var group: Int
   /**
    * - Fixme: ⚠️️ add description
    */
   public var item: Int
   /**
    * - Fixme: ⚠️️ add description
    * - Parameters:
    *   - group: - Fixme: ⚠️️ add doc
    *   - item: - Fixme: ⚠️️ add doc
    */
   public init(group: Int, item: Int) {
      self.group = group
      self.item = item
   }
}

