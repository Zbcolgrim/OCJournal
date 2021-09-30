//
//  ZBEntry.h
//  OCJournal
//
//  Created by Zachary Buffington on 9/29/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZBEntry : NSObject

@property NSString *title;
@property NSString *contents;
@property NSDate *timestamp;

- (instancetype)initWithTitle:(NSString *)title
                     contents:(NSString *)contents
                    timestamp:(NSDate *)timestamp;
@end

NS_ASSUME_NONNULL_END
