//
//  WhichTestViewController.m
//  BYD ACT - SAT
//
//  Created by Allen White on 11/16/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import "WhichTestViewController.h"
#import "TestOptionsViewController.h"

@interface WhichTestViewController ()

@end

@implementation WhichTestViewController

NSString *sat = @"SAT";
NSString *act = @"ACT";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	[self.navigationItem setHidesBackButton:YES animated:YES];
	self.navigationItem.title = @"Choose a test";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	TestOptionsViewController *tovc = [segue destinationViewController];
	if ([segue.identifier isEqualToString:@"satTapped"]) {
		tovc.whichTest = sat;
	}else if([segue.identifier isEqualToString:@"actTapped"]){
		tovc.whichTest = act;
	}
}


@end
