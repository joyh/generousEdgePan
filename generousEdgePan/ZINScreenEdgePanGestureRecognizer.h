//
//  ZINScreenEdgePanGestureRecognizer.h
//  generousEdgePan
//
//  Created by Joyh on 2014. 3. 28..
//  Copyright (c) 2014년 Zininworks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZINScreenEdgePanGestureRecognizer : UIScreenEdgePanGestureRecognizer

- (id)initWithTarget:(id)target action:(SEL)action scrollView:(UIScrollView *)scrollView;

@end
