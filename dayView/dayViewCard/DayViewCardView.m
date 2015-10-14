//
//  DayViewCardView.m
//  dayView
//
//  Created by Daniel Feles on 14/10/2015.
//  Copyright © 2015 Daniel Feles. All rights reserved.
//

#import "DayViewCardView.h"

@interface DayViewCardView ()

@end

@implementation DayViewCardView

int footerHeight = 50;
-(id) init
{
    
    self = [super init];
    if(self)
    {
        [self setBackgroundColor:[UIColor whiteColor]];
        
        self.layer.masksToBounds = NO;
        self.layer.shadowOffset = CGSizeMake(0, 1);
        self.layer.shadowRadius = 1;
        self.layer.shadowOpacity = 0.15;
        
        [self createFooter];
    }
    
    return self;
}

-(void) createFooter
{
    dayViewCardFooter = [DayViewCardFooterView new];
    [self addSubview:dayViewCardFooter];
}

-(void) layoutSubviews
{
    CGFloat height = self.frame.size.height;
    CGFloat width = self.frame.size.width;
    dayViewCardFooter.frame = CGRectMake(0, height-footerHeight, width, footerHeight);
}

@end

