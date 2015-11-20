//
//  TestOptionsViewController.m
//  BYD ACT - SAT
//
//  Created by Allen White on 11/16/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import "TestOptionsViewController.h"
#import "SwipeableViewController.h"

@interface TestOptionsViewController ()

@end

@implementation TestOptionsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.navigationItem.title = self.whichTest;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	SwipeableViewController *svc = [segue destinationViewController];
	svc.whichTest = self.whichTest;

	if ([segue.identifier isEqualToString:@"whereToGoForHelpTapped"]) {
		
	}else if([segue.identifier isEqualToString:@"aboutTheTestTapped"]){

	}else if([segue.identifier isEqualToString:@"tipeToImproveScoreTapped"]){

	}
}


@end
