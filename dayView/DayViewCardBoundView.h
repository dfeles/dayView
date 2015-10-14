//
//  DayViewCardView.h
//  dayView
//
//  Created by Daniel Feles on 14/10/2015.
//  Copyright © 2015 Daniel Feles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DayViewCardBoundView : UIView{
    UIImageView *airlineLogo;
    UILabel *timeLabel;
    UILabel *carrierLabel;
    UILabel *durationLabel;
    UILabel *originLabel;
    UILabel *stopLabel;
}

-(id)initWithLogo:(NSString *)logo time:(NSString *)time carrier:(NSString *)carrier duration:(NSString *)duration origin:(NSString *)origin stop:(NSString *)stop;


@end

