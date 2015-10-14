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

int boundHeight = 50;
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
        
        [self setInbound];
        [self setOutbound];
        [self createFooter];
    }
    
    return self;
}

-(void) setInbound
{
    inBound = [[DayViewCardBoundView alloc] initWithLogo:@"airline" time:@"9:30 - 11:45" carrier:@"British Airways" duration:@"3h 50m" origin:@"BUD - STN" stop:@"nonstop"];
    
    [self addSubview:inBound];
}

-(void) setOutbound
{
    outBound = [[DayViewCardBoundView alloc] initWithLogo:@"airline2" time:@"10:45 - 16:50" carrier:@"Lufthansa" duration:@"4h 20m" origin:@"STN - BUD" stop:@"1 stop"];
    [self addSubview:outBound];
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
    inBound.frame = CGRectMake(0, (height-footerHeight)/2-boundHeight - 10, width, boundHeight);
    outBound.frame = CGRectMake(0, (height-footerHeight)/2+10, width, boundHeight);
    dayViewCardFooter.frame = CGRectMake(0, height-footerHeight, width, footerHeight);
}

@end

