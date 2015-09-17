//
//  ViewController.h
//  AppleTreeProjectTwo
//
//  Created by Admin on 17.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppleTree.h"
#import "AppDelegate.h"
@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *totalAppleCount;
@property AppleTree *tree;

@end

