import Foundation

protocol MenuRowKind {
   var titleText: String { get }
   var action: () -> Void { get } // (Binding or closure)
}
