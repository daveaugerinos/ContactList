//
//  Contact.m
//  ContactList
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "Contact.h"

@implementation Contact

// Override description to print out contact
- (NSString *)description {
    
    // Build string of contact properties
   NSString *contactString = [NSString stringWithFormat:@"%@:\n%@\n(%@)\n", self.contactID, self.fullName, self.emailAddress];

    return contactString;
}

@end
