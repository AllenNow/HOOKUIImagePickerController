//
//  UIImagePickerController+custom.h
//  OpenPhotos
//
//  Created by Allen Gao on 2019/1/21.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIImagePickerController (custom)

/**
 替换代理
 替换代理需要看具体的时机，不能影响到其他模块，使用完毕最好恢复
 */
+ (void)hookDelegate;

/**
 恢复代理
 */
+ (void)unHookDelegate;

@end

