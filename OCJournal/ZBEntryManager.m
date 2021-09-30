//
//  ZBEntryManager.m
//  OCJournal
//
//  Created by Zachary Buffington on 9/29/21.
//

#import "ZBEntryManager.h"

@implementation ZBEntryManager

- (instancetype)init {
    self = [super init];
    
    if (self) {
        _entries = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)createEntryWithTitle:(NSString *)title contents:(NSString *)contents {
    ZBEntry *entry = [[ZBEntry alloc] initWithTitle:title contents:contents timestamp:[NSDate new]];
    [self.entries addObject:entry];
    
    
}

- (void)updateEntry:(ZBEntry *)entry title:(NSString *)title contents:(NSString *)contents {
    entry.title = title;
    entry.contents = contents;
    
}

- (void)deleteEntry:(ZBEntry *)entry {
    [self.entries removeObject:entry];
    
}

@end
