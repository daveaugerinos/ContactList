//
//  main.m
//  ContactList
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BOOL runLoop = true;
        
        ContactList *myContacts = [[ContactList alloc] init];
        
        while (runLoop) {
            // Output menu
            NSString *menu = (@"What would you like do next? new - Create a new contact, list - List all contacts, show - Show Contact Details, quit - Exit Application > ");
            
            // Create collector object and collect user input
            InputCollector *input = [[InputCollector alloc] init];
            NSString *userChoice = [input inputForPrompt:menu];
            
            // Check if user wants to quit and if so exit loop
            if ([userChoice isEqualToString:@"quit"]){
                NSLog(@"Exiting program...\n");
                runLoop = false;
            }
            
            else if ([userChoice isEqualToString:@"new"]) {
                
                // Prompt for new contact info and collect user input
                NSString *enterName = (@"Enter full name >");
                NSString *contactName = [input inputForPrompt:enterName];
                NSString *enterEmail = (@"Enter email address >");
                NSString *contactEmail = [input inputForPrompt:enterEmail];
                
                // Create new contact with supplied info
                Contact *newContact = [[Contact alloc] init];
                newContact.fullName = contactName;
                newContact.emailAddress = contactEmail;                
                
                // Add new contact to contact list
                [myContacts addContact:newContact];
                NSLog(@"New contacted added");
            }
            
            else if ([userChoice isEqualToString:@"list"]) {
                
                // Output contact list
                NSLog(@"%@", [myContacts description]);
            }
            
            else if ([userChoice isEqualToString:@"show"]) {
                
                // Prompt for new contact info and collect user input
                NSString *enterID = (@"Enter user ID >");
                NSString *contactID = [input inputForPrompt:enterID];
                Contact *result = [myContacts showContact:contactID];
                
                // Check if contact was found
                if(result) {
                    // Output contact list
                    NSLog(@"%@", [result description]);
                }
                
                else {
                    NSLog(@"Contact not found.\n");
                }
                
            }
            
        }

    }
    return 0;
}
