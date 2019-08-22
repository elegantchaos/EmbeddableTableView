# Embeddable Table View

A subclass of UITableView that can be embedded inside another UIScrollView or UIStackView.

The table disables scrolling on itself, and returns its contentSize as its intrinsicContentSize.

This should be sufficient for a containing view to size it correctly.
