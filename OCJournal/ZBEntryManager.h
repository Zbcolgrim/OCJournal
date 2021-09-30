//
//  ZBEntryManager.h
//  OCJournal
//
//  Created by Zachary Buffington on 9/29/21.
//

#import <Foundation/Foundation.h>
#import "ZBEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZBEntryManager : NSObject

@property NSMutableArray<ZBEntry *> *entries;

- (void) createEntryWithTitle:(NSString *)title
                     contents:(NSString *)contents;

- (void) updateEntry:(ZBEntry *)entry
               title:(NSString *)title
            contents:(NSString *)contents;

- (void) deleteEntry:(ZBEntry *)entry;


@end

NS_ASSUME_NONNULL_END
