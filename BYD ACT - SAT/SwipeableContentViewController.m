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
	self.contentTextView.text = self.contentString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
