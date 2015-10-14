//
//  iPhoneViewController.h
//  dayView
//
//  Created by Daniel Feles on 14/10/2015.
//  Copyright © 2015 Daniel Feles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DayViewHeaderView.h"
#import "DayViewCardView.h"


@interface iPhoneViewController : UIViewController{
    DayViewHeaderView* dayViewHeader;
    UIView *dayViewCardContainer;
    UIScrollView *scrollView;
    int padding;
    CGFloat screenWidth;
}

@end

