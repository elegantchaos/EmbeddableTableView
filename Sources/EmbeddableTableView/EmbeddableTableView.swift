// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 22/08/2019.
//  All code (c) 2019 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import UIKit

/// A non-scrolling UITableView that sizes itself correctly to fit its contents.
/// This behaviour allows it to be embedded in an enclosing UIScrollView
/// or UIStackView without ambiguity.

public class EmbeddableTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        super.isScrollEnabled = false
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        super.isScrollEnabled = false
    }
    
    public override var isScrollEnabled: Bool {
        get { return false }
        set { }
    }
    
    public override var contentSize: CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }
    
    public override var intrinsicContentSize: CGSize {
        return contentSize
    }
    
    public override func reloadData() {
        invalidateIntrinsicContentSize()
        super.reloadData()
    }
}
