//
//  DayViewCardView.m
//  dayView
//
//  Created by Daniel Feles on 14/10/2015.
//  Copyright © 2015 Daniel Feles. All rights reserved.
//

#import "DayViewCardBoundView.h"

@interface DayViewCardBoundView ()

@end

@implementation DayViewCardBoundView

int airlineLogoSize = 30;

-(id) init
{
    self = [super init];
    if(self)
    {
        airlineLogo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, airlineLogoSize, airlineLogoSize)];
        
        [self setAirlineImage:@"http://logos.skyscnr.com/images/airlines/favicon/60.png"];
        
        [self addSubview:airlineLogo];
        [airlineLogo setBackgroundColor:[UIColor redColor]];
        
        [self addTimeLabel:@"9:30 - 11:45"];
        [self addCarrierLabel:@"British Airways"];
        
        [self addDurationLabel:@"3h 50m"];
        [self addOriginLabel:@"BUD - STN"];
        
        [self addStopLabel:@"nonstop"];
        
    }
    
    return self;
}
NSString *logoString;

-(id)initWithLogo:(NSString *)logo time:(NSString *)time carrier:(NSString *)carrier duration:(NSString *)duration origin:(NSString *)origin stop:(NSString *)stop
{
    self = [super init];
    if (self)
    {
        logoString = logo;
        airlineLogo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, airlineLogoSize, airlineLogoSize)];
        
        [self setAirlineImage:@"http://logos.skyscnr.com/images/airlines/favicon/60.png"];
        
        [self addSubview:airlineLogo];
        [airlineLogo setBackgroundColor:[UIColor redColor]];
        
        [self addTimeLabel:time];
        [self addCarrierLabel:carrier];
        
        [self addDurationLabel:duration];
        [self addOriginLabel:origin];
        
        [self addStopLabel:stop];
    }
    return self;
}

-(void) setAirlineImage:(NSString*)url
{
    
    UIImage* image = [UIImage imageNamed:logoString];
    [airlineLogo setImage:image];
}

-(void) layoutSubviews
{
    int padding = (self.frame.size.height - airlineLogoSize)/2;
    int actualX = padding;
    
    airlineLogo.frame = CGRectMake(actualX, padding, airlineLogoSize, airlineLogoSize);
    actualX += padding + airlineLogo.frame.size.width;
    
    timeLabel.frame = CGRectMake(actualX, padding, 80, 14);
    carrierLabel.frame = CGRectMake(actualX, padding+18, 100, 14);
    actualX += padding + timeLabel.frame.size.width+padding;
    
    durationLabel.frame = CGRectMake(actualX, padding, 50, 14);
    originLabel.frame = CGRectMake(actualX, padding+18, 100, 14);
    actualX += padding + durationLabel.frame.size.width+padding;
    
    stopLabel.frame = CGRectMake(actualX, padding, 80, 14);
}



-(void) addTimeLabel:(NSString*)titleText
{
    
    timeLabel = [UILabel new];
    [timeLabel setFont:[UIFont systemFontOfSize:13]];
    [timeLabel setTextColor:[UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1]];
    [timeLabel setText:titleText];
    
    [self addSubview:timeLabel];
}

-(void) addCarrierLabel:(NSString*)titleText
{
    
    carrierLabel = [UILabel new];
    [carrierLabel setFont:[UIFont systemFontOfSize:11]];
    [carrierLabel setTextColor:[UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:0.75]];
    [carrierLabel setText:titleText];
    
    [self addSubview:carrierLabel];
}

-(void) addDurationLabel:(NSString*)titleText
{
    
    durationLabel = [UILabel new];
    [durationLabel setFont:[UIFont systemFontOfSize:13]];
    [durationLabel setTextColor:[UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1]];
    [durationLabel setText:titleText];
    
    [self addSubview:durationLabel];
}

-(void) addOriginLabel:(NSString*)titleText
{
    
    originLabel = [UILabel new];
    [originLabel setFont:[UIFont systemFontOfSize:11]];
    [originLabel setTextColor:[UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:0.75]];
    [originLabel setText:titleText];
    
    [self addSubview:originLabel];
}

-(void) addStopLabel:(NSString*)titleText
{
    
    stopLabel = [UILabel new];
    [stopLabel setFont:[UIFont systemFontOfSize:13]];
    if(titleText == @"nonstop")
    {
        [stopLabel setTextColor:[UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1]];
    }else{
        [stopLabel setTextColor:[UIColor colorWithRed:0.54 green:0.06 blue:0.06 alpha:1.0]];
    }
    [stopLabel setText:titleText];
    
    [self addSubview:stopLabel];
}


@end

