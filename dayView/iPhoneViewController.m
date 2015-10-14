//
//  iPhoneViewController.m
//  dayView
//
//  Created by Daniel Feles on 14/10/2015.
//  Copyright © 2015 Daniel Feles. All rights reserved.
//

#import "iPhoneViewController.h"

@interface iPhoneViewController ()

@end

@implementation iPhoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    padding = 20;
    screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self createHeader];
    [self createScrollView];
    [self addCardsToDayView:10];
    [self updateScrollView];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)createHeader
{
    dayViewHeader = [DayViewHeaderView new];
    [dayViewHeader setFrame:CGRectMake(0, 0, screenWidth, 80)];
    [self.view addSubview:dayViewHeader];
}


-(void)createScrollView
{
    scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, [dayViewHeader getHeight], self.view.frame.size.width, self.view.frame.size.height-50)];
    
    [self.view addSubview:scrollView];
    
    dayViewCardContainer = [UIView new];
    [scrollView addSubview:dayViewCardContainer];
}

-(void)addCardsToDayView:(int)count
{
    
    for (int i = 0; i <= count; i++)
    {
        DayViewCardView* dayViewCard = [DayViewCardView new];
        CGFloat cardWidth = screenWidth - padding*2.0;
        CGFloat cardHeight = cardWidth / 4.0 * 3.0;
        
        [dayViewCard setFrame:CGRectMake(padding, 10+i*(cardHeight+padding), cardWidth, cardHeight)];
        [dayViewCardContainer addSubview:dayViewCard];
    }
    
}
-(void)updateScrollView
{
    [self resizeToFitSubviews: dayViewCardContainer];
    scrollView.contentSize = CGSizeMake(dayViewCardContainer.frame.size.width,dayViewCardContainer.frame.size.height);
    scrollView.contentInset = UIEdgeInsetsMake(10.0f, 0, 40.0f, 0);
}

-(void)resizeToFitSubviews: (UIView*)view
{
    float w = 0;
    float h = 0;
    
    for (UIView *v in [view subviews]) {
        float fw = v.frame.origin.x + v.frame.size.width;
        float fh = v.frame.origin.y + v.frame.size.height;
        w = MAX(fw, w);
        h = MAX(fh, h);
    }
    [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, w, h)];
}

@end
