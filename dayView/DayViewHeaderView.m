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

-(id) init
{
    self = [super init];
    if(self)
    {
        [self setBackgroundColor:[UIColor redColor]];
    }
    
    return self;
}

-(void) layoutSubviews
{
    
}
-(int) getHeight
{
    return self.frame.size.height;
}

@end

