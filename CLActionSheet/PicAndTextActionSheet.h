//
//  PicAndTextActionSheet.h
//  CLActionSheet
//
//  Created by Cyrilshanway on 2015/8/19.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DownSheetActionDelegate <NSObject>

-(void)didSelectedIndex:(NSInteger)index;

@end


@interface PicAndTextActionSheet : UIView

@property (nonatomic, strong) id<DownSheetActionDelegate> delegate;

-(id)initWithList: (NSArray *)list title: (NSString *) title;

-(void)showInView: (UIViewController *)controller;

@end
