//
//  SwipeableViewController.m
//  BYD ACT - SAT
//
//  Created by Allen White on 11/16/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import "SwipeableViewController.h"
#import "SwipeableContentViewController.h"

@interface SwipeableViewController ()

@end

@implementation SwipeableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.contentStrings = @[@"Dave", @"Larry", @"Kyle", @"Bertha", @"Tanisha"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
