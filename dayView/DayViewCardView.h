//
//  DayViewCardView.h
//  dayView
//
//  Created by Daniel Feles on 14/10/2015.
//  Copyright © 2015 Daniel Feles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DayViewCardFooterView.h"
#import "DayViewCardBoundView.h"

@interface DayViewCardView : UIView{
    DayViewCardFooterView* dayViewCardFooter;
    DayViewCardBoundView* inBound;
    DayViewCardBoundView* outBound;
}


@end

