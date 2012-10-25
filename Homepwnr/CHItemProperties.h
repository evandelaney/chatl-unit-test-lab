//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NSEntityDescription;

@protocol CHItemProperties <NSObject>

@property (copy,   nonatomic) NSString *itemName;
@property (copy,   nonatomic) NSString *serialNumber;
@property (assign, nonatomic) int valueInDollars;
@property (strong, nonatomic, readonly) NSDate *dateCreated;

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber;

@optional

#warning Migrate CHItems over to NSManagedObjects

+ (void)setEntityDescription:(NSEntityDescription *)ed;
+ (NSEntityDescription *)entityDescription;

@end
