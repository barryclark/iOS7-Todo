//
//  Item.h
//  Todo Example App
//
//  Created by Barry Clark on 8/24/13.
//  Copyright (c) 2013 Barry Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Item : NSManagedObject

@property (nonatomic, retain) NSString * content;
@property (nonatomic) NSTimeInterval timeStamp;
@property (nonatomic) BOOL completed;

@end
