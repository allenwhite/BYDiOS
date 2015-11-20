//
//  SwipeableViewController.m
//  BYD ACT - SAT
//
//  Created by Allen White on 11/16/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import "SwipeableViewController.h"

@interface SwipeableViewController ()

@end

@implementation SwipeableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	// Create page view controller
	self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
	self.pageViewController.dataSource = self;
	
	SwipeableContentViewController *scvc = [self viewControllerAtIndex:0];
	NSArray *viewControllers = @[scvc];
	[self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
	
	// Change the size of page view controller
	self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 30);
	
	[self addChildViewController:_pageViewController];
	[self.view addSubview:_pageViewController.view];
	[self.pageViewController didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (SwipeableContentViewController *)viewControllerAtIndex:(NSUInteger)index
{
	if (([self.contentStrings count] == 0) || (index >= [self.contentStrings count])) {
		return nil;
	}
	
	// Create a new view controller and pass suitable data.
	SwipeableContentViewController *scvc = [self.storyboard instantiateViewControllerWithIdentifier:@"SwipeableContentViewController"];
	scvc.contentString = self.contentStrings[index];
	NSLog(@"%@", self.contentStrings[index]);
	
	scvc.pageIndex = index;
	
	return scvc;
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
	NSUInteger index = ((SwipeableContentViewController*) viewController).pageIndex;
	
	if ((index == 0) || (index == NSNotFound)) {
		return nil;
	}
	
	index--;
	return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
	NSUInteger index = ((SwipeableContentViewController*) viewController).pageIndex;
	
	if (index == NSNotFound) {
		return nil;
	}
	
	index++;
	if (index == [self.contentStrings count]) {
		return nil;
	}
	return [self viewControllerAtIndex:index];
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
	return [self.contentStrings count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
	return 0;
}


@end
