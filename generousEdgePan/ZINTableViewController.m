//
//  ZINTableViewController.m
//  generousEdgePan
//
//  Created by Joyh on 2014. 3. 28..
//  Copyright (c) 2014년 Zininworks. All rights reserved.
//

#import "ZINTableViewController.h"
#import "ZINScreenEdgePanGestureRecognizer.h"

@interface ZINTableViewController ()

@end

@implementation ZINTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    ZINScreenEdgePanGestureRecognizer *edgePanGR = [[ZINScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(handleEdgePan:) scrollView:self.tableView];
    [edgePanGR setEdges:UIRectEdgeLeft];
    [self.tableView addGestureRecognizer:edgePanGR];
}

- (void)handleEdgePan:(UIPanGestureRecognizer *)recognizer {
    CGFloat transX = [recognizer translationInView:recognizer.view].x;
    CGRect frame = self.tableView.frame;
    frame.origin.x = transX;
    
    switch (recognizer.state) {
        case UIGestureRecognizerStateChanged:
            [self.tableView setFrame:frame];
            break;
        case UIGestureRecognizerStateEnded: {
            frame.origin.x = 0.;
            [UIView animateWithDuration:0.4 animations:^{
                [self.tableView setFrame:frame];
            }];
            break;
        }
        default:
            break;
    }
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", indexPath];
    
    return cell;
}

@end
