//
//  LoginViewController.m
//  BYD ACT - SAT
//
//  Created by Allen White on 11/16/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import "LoginViewController.h"
#import "WhichTestViewController.h"
#import "UImodel.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UITextField *gradeTextField;
@property (weak, nonatomic) IBOutlet UITextField *schoolNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *twitterOrIGTextField;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.navigationItem.title = @"Check in";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
	if ([identifier isEqualToString:@"loginTapped"]) {
		NSString *name			= [self.nameTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
		NSString *age			= [[[self.ageTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]] componentsSeparatedByCharactersInSet:[[NSCharacterSet decimalDigitCharacterSet] invertedSet]] componentsJoinedByString:@""];
		NSString *grade			= [[[self.gradeTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]] componentsSeparatedByCharactersInSet:[[NSCharacterSet decimalDigitCharacterSet] invertedSet]] componentsJoinedByString:@""];
		NSString *schoolName	= [self.schoolNameTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
		NSString *email			= [self.emailTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
		NSString *twitterOrIG		= [self.twitterOrIGTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
		
		if ([name isEqualToString:@""]) {
			[UImodel showAlert:@"Whoops!" withMessage:@"Please fill out your name"];
			return NO;
		}else if ([age isEqualToString:@""]) {
			[UImodel showAlert:@"Whoops!" withMessage:@"Please fill out your age"];
			return NO;
		}else if ([grade isEqualToString:@""]) {
			[UImodel showAlert:@"Whoops!" withMessage:@"Please fill out your grade"];
			return NO;
		}else if ([schoolName isEqualToString:@""]) {
			[UImodel showAlert:@"Whoops!" withMessage:@"Please fill out the name of your school"];
			return NO;
		}else if ([email isEqualToString:@""]) {
			[UImodel showAlert:@"Whoops!" withMessage:@"Please fill out your email"];
			return NO;
		}
		
		// dont need to set anything but we could?
	}
	return YES;

}



@end
