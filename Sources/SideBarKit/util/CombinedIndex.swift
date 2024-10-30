import Foundation
/**
 * - Abstract: Used for selecting / deselecting items in a 2 level multi-dim UI construct
 * typealias Selection = (column: Int, row: Int)
 * We define a CombinedIndex struct to represent the row and column together.
 * equatable so we can assert if its selected etc
 * - Fixme: ⚠️️ Try col, row. ask copilot. col, row is decoupled from needing to be stored etc.
 * - Fixme: ⚠️️ Rename to pathIndex?
 * - Fixme: ⚠️️ Add notes regarding using uuid, and how it would hange the design, and that we want to be as stateless as possible?
 * - Fixme: ⚠️️ Rename to group, item?
 * - Fixme: ⚠️️ Use combinedIndex, as its easier to set init selection etc
 */
struct CombinedIndex: Equatable {
   var group: Int
   var item: Int
}

