generousEdgePan
===============

More forgiving UIScreenEdgePanGestureRecognizer implementation.

When being used on a `UIScrollView` or its subclasses, `UIScreenEdgePanGestureRecognizer` is not forgiving enough and too hard to activate. 

We can make `UIScreenEdgePanGestureRecognizer` more generous by doing this.

1. Set delegate of the `UIScreenEdgePanGestureRecognizer`, so it can be simultaneously recognized with scrollView's `UIPanGestureRecognizer`.
2. Require `UIScreenEdgePanGestureRecognizer` failure for scrollView's `UIPanGestureRecognizer` recognition.  
e.g. `[scrollView.panGestureRecognizer requireGestureRecognizerToFail:edgeGR];`