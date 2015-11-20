//
//  SwipeableViewController.h
//  BYD ACT - SAT
//
//  Created by Allen White on 11/16/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipeableViewController : UIPageViewController <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property NSString *whichTest;
@property NSArray *contentStrings;


@end
