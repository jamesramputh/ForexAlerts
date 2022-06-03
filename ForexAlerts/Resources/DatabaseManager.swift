//
//  DatabaseManager.swift
//  ForexAlerts
//
//  Created by James Ramputh on 2022-05-28.
//

import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    // MARK: = Public
    
    /// Check if username and email is avaialbe
    ///  - Parameters
    ///      - email: String representing email
    ///      - username: String representing username
    public func canCreateNewUser( with email: String, username: String, completion: (Bool) -> Void) {
        completion( true )
    }
    
    /// Insert new user into database
    ///  - Parameters
    ///      - email: String representing email
    ///      - username: String representing username
    ///      - completion: Async callback for result if database entry succeeded
    public func insertNewUser( with email: String, username: String, completion: @escaping (Bool) -> Void ) {
    
        database.child(email.safeDatabaseKey()).setValue(["username": username]) { error, _ in
            if error == nil {
                // Succeeded
                completion( true )
            } else {
                // Failed 
                completion( false )
                return
            }
        }
        
    }
    
    // MARK: = Private
    
    

}
