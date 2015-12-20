//
//  UImodel.m
//  BYD ACT - SAT
//
//  Created by Allen White on 12/20/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import "UImodel.h"
#import <UIKit/UIKit.h>

@implementation UImodel



+(void)showAlert:(NSString *)title withMessage:(NSString *)message{
	UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:title
							   message:message
							  delegate:self
						 cancelButtonTitle:@"OK"
						 otherButtonTitles:nil];
	[theAlert show];
}

@end
