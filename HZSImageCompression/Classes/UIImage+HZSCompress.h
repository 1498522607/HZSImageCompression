//
//  UIImage+HZSCompress.h
//  Pods
//
//  Created by 黄祖树 on 2020/11/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define Megabytes 1048576

@interface UIImage (HZSCompress)

/**
 图片压缩，先进行质量压缩仍然达不到标准则继续尺寸压缩 1m = 1 * 1024 * 1024 字节,会压缩到90%-100%，如果达不到就进行尺寸压缩
 Megabytes
 @param maxLength 目标最大字节
 @return 压缩后的data
 */
-(NSData *)dataWithCompressMaxLength:(NSUInteger)maxLength;
@end

NS_ASSUME_NONNULL_END
