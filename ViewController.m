//
//  ViewController.m
//  ContainerView
//
//  Created by Ravinder Vatish on 7/21/15.
//  Copyright (c) 2015 Ravinder. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _childView1 = [self.storyboard instantiateViewControllerWithIdentifier:@"childView1"];
    _childView2 = [self.storyboard instantiateViewControllerWithIdentifier:@"childView2"];
    _childView3 = [self.storyboard instantiateViewControllerWithIdentifier:@"Child3"];
    _childView4 = [self.storyboard instantiateViewControllerWithIdentifier:@"Child4"];
    
    _childView1.view.frame = self.containerView.bounds;
    _childView2.view.frame = self.containerView.bounds;
    
    [self addChildViewController:_childView1];
    [self addChildViewController:_childView2];
    [self addChildViewController:_childView3];
    [self addChildViewController:_childView4];
    
    [self segmentControl:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentControl:(id)sender {
    
   // NSLog(@"value of segment %@", _segment);
    
    
    if(_segment.selectedSegmentIndex == 0)
    {
       NSLog(@"0");
        
        [self transitionFromViewController:_childView2 toViewController:_childView1 duration:.6 options:UIViewAnimationOptionTransitionFlipFromLeft animations:nil
                                completion:^(BOOL finished) {
                                }];
        
       
        _childView1.view.frame = self.containerView.bounds;
             [self.containerView addSubview:[_childView1 view]];
             [_childView1 didMoveToParentViewController:self];
    }
    else
    {
        
         NSLog(@"1");
        [self transitionFromViewController:_childView1 toViewController:_childView2 duration:.6 options:UIViewAnimationOptionTransitionFlipFromLeft animations:nil
                                completion:^(BOOL finished) {
                                    NSLog(@"inside");
                                    //[_childView1 removeFromParentViewController];
                                  //  [_childView1.view removeFromSuperview];
                                   // [_childView1 removeFromParentViewController];
                                }];
        
        
        _childView2.view.frame = self.containerView.bounds;
        [self.containerView addSubview:[_childView2 view]];
        [_childView2 didMoveToParentViewController:self];
}
    

    
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"viewDidAppear");
    
}


- (IBAction)segmentControl2:(id)sender {
    
    if(_segment2.selectedSegmentIndex == 0)
    {
        NSLog(@"0");
        
        [self transitionFromViewController:_childView4 toViewController:_childView3 duration:.6 options:UIViewAnimationOptionTransitionFlipFromLeft animations:nil
                                completion:^(BOOL finished) {
                                }];
        
        
        _childView3.view.frame = self.containerView2.bounds;
        [self.containerView2 addSubview:[_childView3 view]];
        [_childView3 didMoveToParentViewController:self];
    }
    else
    {
        
        NSLog(@"1");
        [self transitionFromViewController:_childView3 toViewController:_childView4 duration:.6 options:UIViewAnimationOptionTransitionFlipFromLeft animations:nil
                                completion:^(BOOL finished) {
                                    NSLog(@"inside");
                                    //[_childView1 removeFromParentViewController];
                                    //  [_childView1.view removeFromSuperview];
                                    // [_childView1 removeFromParentViewController];
                                }];
        
        
        _childView4.view.frame = self.containerView2.bounds;
        [self.containerView2 addSubview:[_childView4 view]];
        [_childView4 didMoveToParentViewController:self];
    }
}

@end
