//
//  DayViewHeaderView.m
//  dayView
//
//  Created by Daniel Feles on 14/10/2015.
//  Copyright © 2015 Daniel Feles. All rights reserved.
//

#import "DayViewHeaderView.h"

@interface DayViewHeaderView ()

@end

@implementation DayViewHeaderView

int padding = 10;
int screenWidth;

-(id) init
{
    self = [super init];
    if(self)
    {
        [self setBackgroundColor:[UIColor whiteColor]];
        
        self.layer.masksToBounds = NO;
        self.layer.shadowOffset = CGSizeMake(0, 1);
        self.layer.shadowRadius = 0;
        self.layer.shadowOpacity = 0.15;
        
        
        screenWidth = [UIScreen mainScreen].bounds.size.width;
        
        closeButton = [self createButtonWithImage:@"close"];
        [self addSubview:closeButton];
        priceAlertButton = [self createButtonWithImage:@"alert"];
        [self addSubview:priceAlertButton];
        shareButton = [self createButtonWithImage:@"share"];
        [self addSubview:shareButton];
        
        
        [self addTitle:@"Budapest - London"];
        [self addSubTitle:@"Tue, Mar 13 - Wed, Mar 27"];
        
        [self createSortingOptions];
    }
    return self;
}

-(void) layoutSubviews
{
    
    closeButton.frame = CGRectMake(padding,50/2+20 - closeButton.frame.size.height/2,closeButton.frame.size.width,closeButton.frame.size.height);
    priceAlertButton.frame = CGRectMake(screenWidth-padding-priceAlertButton.frame.size.width,50/2+20 - priceAlertButton.frame.size.height/2,priceAlertButton.frame.size.width,priceAlertButton.frame.size.height);
    shareButton.frame = CGRectMake(priceAlertButton.frame.origin.x-padding-shareButton.frame.size.width,50/2+20 - shareButton.frame.size.height/2,shareButton.frame.size.width,shareButton.frame.size.height);
    
    titleLabel.frame = CGRectMake(30,30,screenWidth-60,20);
    
    subTitleLabel.frame = CGRectMake(30,45,screenWidth-60,20);
    segmentedControl.frame = CGRectMake(padding,70,screenWidth-padding*2,25);
}

-(void) addTitle:(NSString*)titleText
{
    
    titleLabel = [UILabel new];
    [titleLabel setFont:[UIFont systemFontOfSize:16]];
    [titleLabel setTextColor:[UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0]];
    [titleLabel setText:titleText];
    [titleLabel setTextAlignment:NSTextAlignmentCenter];
    
    [self addSubview:titleLabel];
}

-(void) addSubTitle:(NSString*)titleText
{
    
    subTitleLabel = [UILabel new];
    [subTitleLabel setFont:[UIFont systemFontOfSize:12]];
    [subTitleLabel setTextColor:[UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:0.75]];
    [subTitleLabel setText:titleText];
    [subTitleLabel setTextAlignment:NSTextAlignmentCenter];
    
    [self addSubview:subTitleLabel];
}

-(void) createSortingOptions
{
    NSArray *itemArray = [NSArray arrayWithObjects: @"Price", @"Duration", @"Rating", nil];
    segmentedControl = [[UISegmentedControl alloc] initWithItems:itemArray];
    //segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;
    [segmentedControl setTintColor:[UIColor colorWithRed:0.05 green:0.74 blue:0.91 alpha:1.0]];
    segmentedControl.selectedSegmentIndex = 0;
    [self addSubview:segmentedControl];
}


-(int) getHeight
{
    return self.frame.size.height;
}

-(UIButton*) createButtonWithImage:(NSString*)imageName
{
    UIImage* icon = [UIImage imageNamed:imageName];
    CGRect iconRect = CGRectMake(0, 0, icon.size.width, icon.size.height);
    UIButton* _button = [[UIButton alloc] initWithFrame:iconRect];
    [_button setBackgroundImage:icon forState:UIControlStateNormal];
    return _button;
}

@end

