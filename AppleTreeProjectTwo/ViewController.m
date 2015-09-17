//
//  ViewController.m
//  AppleTreeProjectTwo
//
//  Created by Admin on 17.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AppDelegate *myDelegate = [[UIApplication sharedApplication] delegate];
    AppleTree *tree = myDelegate.tree;
     
}
- (IBAction)grow:(id)sender {
    [self createTreeIfNotExists];
    [_tree growForAge:2 Height:2];
     AppleTree * appTree = [[AppleTree alloc] initWithHeight:10 sort:APPLESORT1];
    
    Leaf *l = [appTree.leafs firstObject];
    [l showDetails];
    
    Apple *app = [appTree.fruits firstObject];
    [app showDetails];
    
    [appTree showDetails];
    for (int i = 0; i < 3; ++i) {
        [appTree growForAge:2 Height:2];
        [appTree showDetails];
        
        [appTree shake];
        [appTree showDetails];
    }
    [self.totalAppleCount setText:[NSString stringWithFormat: @"Tree height: %d", appTree.height ]];
}

- (void) createTreeIfNotExists {
    if (_tree == nil) {
        _tree = [[AppleTree alloc] initWithHeight:10 sort:APPLESORT1];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
