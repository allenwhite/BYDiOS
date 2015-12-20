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
#import <Parse/Parse.h>

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UITextField *gradeTextField;
@property (weak, nonatomic) IBOutlet UITextField *schoolNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *twitterOrIGTextField;

@end

@implementation LoginViewController

NSString * const LOGIN_BOOL = @"userDefaultsLoginBool"; // const pointer
NSString * const SEGUE_ID = @"loginTapped"; // const pointer




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.navigationItem.title = @"Check in";
	if ([[NSUserDefaults standardUserDefaults] boolForKey:LOGIN_BOOL]) {
		[self performSegueWithIdentifier:SEGUE_ID sender:nil];
	}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
	if ([identifier isEqualToString:SEGUE_ID]) {
		NSString *name			= [self.nameTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
		NSString *age			= [[[self.ageTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]] componentsSeparatedByCharactersInSet:[[NSCharacterSet decimalDigitCharacterSet] invertedSet]] componentsJoinedByString:@""];
		NSString *grade			= [[[self.gradeTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]] componentsSeparatedByCharactersInSet:[[NSCharacterSet decimalDigitCharacterSet] invertedSet]] componentsJoinedByString:@""];
		NSString *schoolName	= [self.schoolNameTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
		NSString *email			= [self.emailTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
		NSString *twitterOrIG		= [self.twitterOrIGTextField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
		
		NSLog(@"\n\n%@\n%@\n%@\n%@\n%@\n%@\n\n",
		      name,
		      age,
		      grade,
		      schoolName,
		      email,
		      twitterOrIG);
		
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
		
		[Parse setApplicationId:@"Kb3GFyrBfNLa2OEwIAmo26fSPUQw1mwHUZ5CjF8i"
			      clientKey:@"Ix9HHnXltiqqiaqvtaBo6VXTkYSjA0ZMOsUiO6VF"];
		
		PFObject *testObject = [PFObject objectWithClassName:@"UserObject"];
		
		testObject[@"age"] = age;
		testObject[@"email"] = email;
		testObject[@"grade"] = grade;
		testObject[@"name"] = name;
		testObject[@"school"] = schoolName;
		testObject[@"twitter_or_instagram"] = twitterOrIG;
		
		[testObject saveInBackground];
		
		[[NSUserDefaults standardUserDefaults] setBool:YES forKey:LOGIN_BOOL];
		
		return YES;
		// dont need to set anything but we could?
	}
	return YES;

}



@end
