//
//  ZBEntry.m
//  OCJournal
//
//  Created by Zachary Buffington on 9/29/21.
//

#import "ZBEntry.h"

@implementation ZBEntry

- (instancetype)initWithTitle:(NSString *)title contents:(NSString *)contents timestamp:(NSDate *)timestamp {
    self = [super init];
    
    if (self) {
        _title = title;
        _contents = contents;
        _timestamp = timestamp;
        
    }
    
    
    return self;
}
@end
