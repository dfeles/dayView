//
//  DayViewHeaderView.h
//  dayView
//
//  Created by Daniel Feles on 14/10/2015.
//  Copyright © 2015 Daniel Feles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DayViewHeaderView : UIView{
    UIButton *closeButton;
    UIButton *priceAlertButton;
    UIButton *shareButton;
    UILabel *titleLabel;
    UILabel *subTitleLabel;
    UISegmentedControl *segmentedControl;
}

-(int) getHeight;

@end

