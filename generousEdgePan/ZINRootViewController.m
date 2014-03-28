//
//  ZINRootViewController.m
//  generousEdgePan
//
//  Created by Joyh on 2014. 3. 28..
//  Copyright (c) 2014년 Zininworks. All rights reserved.
//

#import "ZINRootViewController.h"
#import "ZINTableViewController.h"


@interface ZINRootViewController ()
@end

@implementation ZINRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *sideView = [[UIView alloc] initWithFrame:self.view.bounds];
    [sideView setBackgroundColor:[UIColor darkGrayColor]];
    [self.view addSubview:sideView];
    
    ZINTableViewController *tableVC = [[ZINTableViewController alloc] init];
    [tableVC willMoveToParentViewController:self];
    [self addChildViewController:tableVC];
    [self.view addSubview:tableVC.view];
    [tableVC didMoveToParentViewController:self];
    
}

@end
