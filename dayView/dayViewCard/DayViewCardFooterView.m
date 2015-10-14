//
//  DayViewCardView.m
//  dayView
//
//  Created by Daniel Feles on 14/10/2015.
//  Copyright © 2015 Daniel Feles. All rights reserved.
//

#import "DayViewCardFooterView.h"

@interface DayViewCardFooterView ()

@end

@implementation DayViewCardFooterView

-(id) init
{
    self = [super init];
    if(self)
    {
        [self setBackgroundColor:[UIColor colorWithRed:0.96 green:0.97 blue:0.98 alpha:1.0]];
        [self addPriceLabel:@"$205"];
        
        
        [self addDetailLabel:@"4 persons: $1448 \nvia BloodyCheapTickets.com"];
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake(0, 0, 100, 50);
        [button setTitle:@"Book" forState:UIControlStateNormal];
        [self addSubview:button];
    }
    
    return self;
}

-(void) layoutSubviews
{
    CGFloat height = self.frame.size.height;
    CGFloat width = self.frame.size.width;
    priceLabel.frame = CGRectMake(10, (height-20)/2, 50, 20);
    detailLabel.frame = CGRectMake(70, (height-30)/2, 150, 30);
    
    button.frame = CGRectMake(width-60, (height-20)/2, 50, 20);
}

-(void) addPriceLabel:(NSString*)titleText
{
    
    priceLabel = [UILabel new];
    [priceLabel setFont:[UIFont systemFontOfSize:20]];
    [priceLabel setTextColor:[UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:0.75]];
    [priceLabel setText:titleText];
    
    [self addSubview:priceLabel];
}

-(void) addDetailLabel:(NSString*)titleText
{
    
    detailLabel = [UILabel new];
    [detailLabel setFont:[UIFont systemFontOfSize:10]];
    [detailLabel setTextColor:[UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:0.75]];
    detailLabel.numberOfLines=0;
    detailLabel.lineBreakMode = UILineBreakModeWordWrap;
    [detailLabel setText:titleText];
    
    [self addSubview:detailLabel];
}

@end

