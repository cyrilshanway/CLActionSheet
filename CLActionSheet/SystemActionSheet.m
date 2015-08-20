//
//  SystemActionSheet.m
//  CLActionSheet
//
//  Created by Cyrilshanway on 2015/8/19.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

#import "SystemActionSheet.h"

@interface SystemActionSheet() <UIActionSheetDelegate>

@property (nonatomic , strong) UIActionSheet *actionSheet;

@end

@implementation SystemActionSheet

-(id)initViewWithPhone: (NSString *)phone title:(NSString *)title
{
    if (self = [self init])
    {
        _actionSheet.title = title;
        [_actionSheet addButtonWithTitle:phone];
        
    }
    
    return self;
}

-(id)initViewMultiplePhone: (NSArray *) array title:(NSString *)title
{
    if (self = [self init])
    {
        _actionSheet.title = title;
        for(NSString *name in array)
        {
            [_actionSheet addButtonWithTitle:name];
        }
        
    }
    
    return self;
}

-(id)init
{
    CGRect bounds = [[UIScreen mainScreen] bounds];
    if(self = [super initWithFrame:bounds])
    {
        self.backgroundColor = [UIColor clearColor];
        _actionSheet = [[UIActionSheet alloc] initWithTitle: nil
                                                   delegate: self
                                          cancelButtonTitle: nil destructiveButtonTitle: nil otherButtonTitles: nil];
        _actionSheet.cancelButtonIndex = [_actionSheet addButtonWithTitle:@"取消"];
    }
    
    return self;
}

-(void)close
{
    for(UIView *view in [self subviews])
    {
        [view removeFromSuperview];
    }
    [self removeFromSuperview];
}

-(void)show
{
    [_actionSheet showInView:self];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == actionSheet.cancelButtonIndex)
    {
        [self close];
    }else{
        
        [self clickPhone:[_actionSheet buttonTitleAtIndex:buttonIndex]];
    }
}

-(void)clickPhone:(NSString *)phoneNumber
{
    NSLog(@"%@", phoneNumber);
    NSString *url_string = [NSString stringWithFormat:@"tel://%@", phoneNumber];
    
    BOOL result = [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url_string]];
    if (!result)
    {
        [self close];
        NSLog(@"您的設備不支持撥打電話功能");
    }else
    {
        [self close];
    }
}
@end

