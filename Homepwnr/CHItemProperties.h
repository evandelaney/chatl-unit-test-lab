//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CHItemProperties <NSObject>

@property (copy,   nonatomic) NSString *itemName;
@property (copy,   nonatomic) NSString *serialNumber;
@property (assign, nonatomic) int valueInDollars;
@property (strong, nonatomic, readonly) NSDate *dateCreated;

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber;

@end
