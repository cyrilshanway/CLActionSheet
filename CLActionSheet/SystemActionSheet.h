//
//  SystemActionSheet.h
//  CLActionSheet
//
//  Created by Cyrilshanway on 2015/8/19.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SystemActionSheet : UIView

-(id)initViewWithPhone: (NSString *)phone title:(NSString *)title;

-(id)initViewMultiplePhone: (NSArray *) array title:(NSString *)title;

-(void)show;
@end
