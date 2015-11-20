//
//  TestOptionsViewController.m
//  BYD ACT - SAT
//
//  Created by Allen White on 11/16/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import "TestOptionsViewController.h"
#import "SwipeableViewController.h"
#import "Constants.h"

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
		if ([self.whichTest isEqualToString:@"SAT"]) {
			svc.contentStrings = [Constants SATgetWhereToGoForHelpStrings];
		}else{
			svc.contentStrings = [Constants ACTgetWhereToGoForHelpStrings];
		}
	}else if([segue.identifier isEqualToString:@"aboutTheTestTapped"]){
		if ([self.whichTest isEqualToString:@"SAT"]) {
			svc.contentStrings = [Constants SATgetAboutTheTestStrings];
		}else{
			svc.contentStrings = [Constants ACTgetAboutTheTestStrings];
		}
	}else if([segue.identifier isEqualToString:@"tipsToImproveScoreTapped"]){
		if ([self.whichTest isEqualToString:@"SAT"]) {
			svc.contentStrings = [Constants SATgetTipsToImproveScoreStrings];
		}else{
			svc.contentStrings = [Constants ACTgetTipsToImproveScoreStrings];
		}
	}
}


@end
