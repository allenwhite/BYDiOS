//
//  SwipeableViewController.h
//  BYD ACT - SAT
//
//  Created by Allen White on 11/16/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SwipeableContentViewController.h"

@interface SwipeableViewController : UIViewController <UIPageViewControllerDataSource>

@property NSString *whichTest;
@property NSArray *contentStrings;
@property (strong, nonatomic) UIPageViewController *pageViewController;


@end
