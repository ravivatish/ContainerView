//
//  ViewController.h
//  ContainerView
//
//  Created by Ravinder Vatish on 7/21/15.
//  Copyright (c) 2015 Ravinder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)segmentControl:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment2;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
@property (strong, nonatomic) UIViewController* childView1;
@property (strong, nonatomic) UIViewController* childView2;
@property (strong, nonatomic) UIViewController* childView3;
@property (strong, nonatomic) UIViewController* childView4;
@property (weak, nonatomic) IBOutlet UIView *containerView2;

- (IBAction)segmentControl2:(id)sender;

@end

