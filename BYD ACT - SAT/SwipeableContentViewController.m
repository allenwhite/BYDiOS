//
//  SwipeableContentViewController.m
//  BYD ACT - SAT
//
//  Created by Allen White on 11/20/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import "SwipeableContentViewController.h"

@interface SwipeableContentViewController ()

@end

@implementation SwipeableContentViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
	self.contentTextView.attributedText = self.contentString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews {
	[super viewDidLayoutSubviews];
	[self.contentTextView setContentOffset:CGPointZero animated:NO];
}

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
}

@end
