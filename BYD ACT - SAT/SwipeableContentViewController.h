//
//  SwipeableContentViewController.h
//  BYD ACT - SAT
//
//  Created by Allen White on 11/20/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipeableContentViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *contentTextView;
@property NSUInteger pageIndex;

@end
