//
//  UIImage+HZSCompress.m
//  Pods
//
//  Created by 黄祖树 on 2020/11/15.
//

#import "UIImage+HZSCompress.h"

@implementation UIImage (HZSCompress)
-(NSData *)dataWithCompressMaxLength:(NSUInteger)maxLength {
    CGFloat compression = 1;
    NSData *data = UIImageJPEGRepresentation(self, compression);
    if (data.length < maxLength)
    {
        return data; //无需压缩已达到
    }
    
    
    //质量压缩
    CGFloat max = 1;
    CGFloat min = 0;
    for (int i = 0; i < 6; ++i) { //2分法，循环次数与精度关系是 1/2 n次方， 6次方是0.015625，精度足够，可自行调整
        compression = (max + min) / 2;
        data = UIImageJPEGRepresentation(self, compression);
        if (data.length < maxLength * 0.9) {
            min = compression;
        } else if (data.length > maxLength) {
            max = compression;
        } else {
            break;
        }
    }
    if (data.length < maxLength)
    {
        return data; //质量压缩后达到
    }
    //一般质量压缩会达到指定大小0.9到1.0之间，如果还不行就再进行尺寸压缩
    
    
    //尺寸压缩
    UIImage *resultImage = [UIImage imageWithData:data];
    NSUInteger lastDataLength = 0;
    while (data.length > maxLength && data.length != lastDataLength) {
        lastDataLength = data.length;
        CGFloat ratio = (CGFloat)maxLength / data.length;
        CGSize size = CGSizeMake((NSUInteger)(resultImage.size.width * sqrtf(ratio)),
                                 (NSUInteger)(resultImage.size.height * sqrtf(ratio)));
        UIGraphicsBeginImageContext(size);
        [resultImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
        resultImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        data = UIImageJPEGRepresentation(resultImage, compression);
    }
    return data;
}

@end
