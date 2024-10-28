import Foundation
/**
 * Each row view needs to contain this
 */
protocol MenuRowKind {
   var titleText: String { get }
   var action: () -> Void { get } // (Binding or closure)
}
